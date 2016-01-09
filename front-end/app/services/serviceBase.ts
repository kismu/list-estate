import {Http, Response} from 'angular2/http';

export class ServiceBase {
	private apiUrl : string = "http://api.list-estate.sk/";
	private http:Http;
	constructor(http: Http) {
		this.http = http;
	}
	getDataFromApi(path:string) {
		let finalPath = this.apiUrl+path;
		return this.http.get(finalPath)
			.map(response => (<Response>response).json());		
	}
}