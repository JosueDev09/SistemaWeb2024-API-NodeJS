import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Users } from '../models/usersModels';


@Injectable({
  providedIn: 'root'
})
export class UsersService {
  private url: string = environment.apiUrl;
  constructor(private https:HttpClient) { }

  listEmpleados() {
    return this.https.get(this.url + 'Administracion/Empleados');
  }
 
}
