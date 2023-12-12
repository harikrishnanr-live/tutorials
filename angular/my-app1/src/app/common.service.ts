import { Injectable } from '@angular/core';
import { WebapiService } from './webapi.service';
import { Observable } from 'rxjs';

var apiUrl = "https://dummyjson.com/";

var httpLink = {
  getAllProducts: apiUrl + "products",
  deleteProductsById: apiUrl + "products",
  getProductsDetailById: apiUrl + "products",
  saveProducts: apiUrl + "products/add"
}

@Injectable({
  providedIn: 'root'
})
export class CommonService {

  constructor(private webApiService: WebapiService) { }

  public getAllProducts(): Observable<any> {
    return this.webApiService.getData(httpLink.getAllProducts);
  }

  public deleteProductsById(model: any): Observable<any> {
    return this.webApiService.postData(httpLink.deleteProductsById + '?employeeId=' + model, "");
  }

  public getProductsDetailById(model: any): Observable<any> {
    return this.webApiService.getData(httpLink.getProductsDetailById + '?employeeId=' + model);
  }

  public saveProducts(model: any): Observable<any> {
    return this.webApiService.postData(httpLink.saveProducts, model);
  }  
}
