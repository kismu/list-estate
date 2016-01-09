import {Injectable} from 'angular2/core';
import {ServiceBase} from './serviceBase';
import {Http} from 'angular2/http';

@Injectable()
export class PropertyService extends ServiceBase {
	constructor(http:Http) {
		super(http);
	}
	getItemById(id) {
		let path = "property/id/"+id;
		return this.getDataFromApi(path);
	}
	getProperties() {
		let path = "property/list";
		return this.getDataFromApi(path);
	}
	searchProperties(search:string) {
		let path = "property/search/"+search;
		return this.getDataFromApi(path);
	}
	getCounts() {
		let path = "property/counts";
		return this.getDataFromApi(path);
	}

}