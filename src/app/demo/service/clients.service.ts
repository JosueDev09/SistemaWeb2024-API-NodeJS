import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Clients } from '../models/clientsModels';


@Injectable({
    providedIn: 'root'
  })
  export class ClientsService {
    private url: string = environment.apiUrl;
    constructor(private https:HttpClient) { }
   
      // Method to retrieve a list of employees
      listClients(): Observable<Clients[]> {
        // Sends a GET request to the specified URL and returns an Observable of Users array
        return this.https.get<Clients[]>(this.url + 'Administration/ClientsList');
      }

   
  }