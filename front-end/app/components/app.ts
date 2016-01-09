import {Component, OnInit} from 'angular2/core';
import {RouteConfig, ROUTER_DIRECTIVES, Router, Location} from 'angular2/router';
import {PropertyService} from '../services/propertyService';

@Component({
    selector: 'list-estate',
    templateUrl:'/templates/app.html',
    directives: [ROUTER_DIRECTIVES]
})
export class App {
    public properties;
    public selectedProperty;
    public label: string = "A";
    public lat:number = 10;
    public long:number = 10;
    public amenities = [];
    public selected = false;
    public zoom:number = 15;
    public mapURL:string;
    public search:string = '';
    public sortOrder: string = '';
    public propertyCount: number = 10;
    public likesCount: number = 204;
    
    constructor(private propertyService : PropertyService) {
        
    }
    
    ngOnInit() {
        this.propertyService.getProperties().subscribe(properties => this.properties = properties);
        this.propertyService.getCounts().subscribe(data => {
            this.propertyCount = Number.parseInt(data.propertyCount);
            this.likesCount = Number.parseInt(data.likesCount);
        });
    }
    
    onSearch() {
        this.propertyService.searchProperties(this.search).subscribe(properties => {
                if(this.sortOrder == '') {
                    this.properties = properties;                
                } else {
                    properties.sort(this.dynamicSort(this.sortOrder));
                    this.properties = properties;
                }
            }
        );
    }
    
    getProperties() {
        return this.properties;
    }
    
    selectProperty(entry) {
        this.selected = true;
        this.selectedProperty = entry;
        let amenities = [];
        for(let key in entry.amenities.amenities) {
            if(entry.amenities.amenities[key] == "1") {
                amenities.push(this.toTitleCase(key));
            }            
        }
        this.amenities = amenities;
        this.lat = Number.parseFloat(entry.location.location.latitude);
        this.long = Number.parseFloat(entry.location.location.longitude);
        this.mapURL = "https://maps.google.com/maps?z="+this.zoom+"&t=m&q=loc:"+this.lat+"+"+this.long+"&output=embed";
    }
    
    toTitleCase(str) {
        str = str.replace("_", " ");
        return str.replace(/\w\S*/g, function(txt){
            return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();
        });
    }
    
    like(property) {
        property.likes = Number.parseInt(property.likes) + 1;
        this.likesCount += 1;
    }
    
    sortData(field:string) {
        this.sortOrder = field;
        this.properties.sort(this.dynamicSort(field));
    }
    
    dynamicSort(field) {
        if(field=="price") {
            return function (a,b) {
                if (Number.parseFloat(a[field]) < Number.parseFloat(b[field])) {
                    return -1;
                }
                else if (Number.parseFloat(a[field]) > Number.parseFloat(b[field])) {
                    return 1;
                }
                else {
                    return 0;
                }
            }
        } else {
            return function (a,b) {
                if (a[field] < b[field]) {
                    return -1;
                }
                else if (a[field] > b[field]) {
                    return 1;
                }
                else {
                    return 0;
                }
            }            
        }
        
    }
}