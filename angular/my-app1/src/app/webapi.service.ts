import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, catchError, map } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class WebapiService {

  httpClient: any;
  constructor(private http: HttpClient) {}

  getData(url: string): Observable<any> {
    return this.http.get(url);
  }

  postData(url: string, data: any) {
    return this.http.post(url, data);
  }
}
