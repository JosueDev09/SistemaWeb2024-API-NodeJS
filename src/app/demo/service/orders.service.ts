import { HttpClient, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { Observable } from 'rxjs';
import { Orders, OrdersProducts } from '../models/ordersModel';

@Injectable({
    providedIn: 'root'
  })
export class OrdersService {
    private url: string = environment.apiUrl;
    constructor(private https:HttpClient) { }

    getOrders(): Observable<Orders[]> {
            // Sends a GET request to the specified URL and returns an Observable of Users array
            return this.https.get<Orders[]>(this.url + 'Administration/Orders');
          }
    getOrdersProducts(intClient:number,intOrder:number): Observable<OrdersProducts[]> {
      let params = new HttpParams();

      if (intClient) {
        params = params.set('intClient', intClient.toString());
      }
      if (intOrder) {
        params = params.set('intOrder', intOrder.toString());
      }
            // Sends a GET request to the specified URL and returns an Observable of Users array
            return this.https.get<OrdersProducts[]>(this.url + 'Administration/ordersproductslist', { params });
          }

}