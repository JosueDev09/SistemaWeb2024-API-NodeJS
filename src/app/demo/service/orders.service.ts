import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { Observable } from 'rxjs';
import { Orders } from '../models/ordersModel';

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

}