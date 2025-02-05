import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Users, Users1 } from '../models/usersModels'; 


@Injectable({
    providedIn: 'root'
  })
  export class ClientsService {
    private url: string = environment.apiUrl;
    constructor(private https:HttpClient) { }
   
      // Method to retrieve a list of employees
      listClients(): Observable<Users[]> {
        // Sends a GET request to the specified URL and returns an Observable of Users array
        return this.https.get<Users[]>(this.url + 'Administration/ClientsList');
      }

   
  }