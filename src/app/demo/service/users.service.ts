import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Users, Users1 } from '../models/usersModels'; 


@Injectable({
  providedIn: 'root'
})
export class UsersService {
  private url: string = environment.apiUrl;
  constructor(private https:HttpClient) { }

  getDashboard(): Observable<any> {
    return this.https.get(`${this.url}/Administracion/Empleados`, {
      headers: {
        'Authorization': `Bearer ${localStorage.getItem('token')}` // Asegúrate de agregar el token de autorización
      }
    });
  }
  listEmpleados() {
    return this.https.get(this.url + 'Administracion/Empleados');
  }
//   listEmpleados1() {
//     return this.https.get<any>(this.url + 'Administracion/Empleados')
//         .toPromise()
//         .then(res => res.data as Users[])
//         .then(data => data);
// }
  listPuestosR():Observable<any[]>  {
    return this.https.get<any>(this.url + 'Administracion/ListaPuestos');
  }
  addEmpleados(empleados:Users1):Observable<Users1> {
    return this.https.post<Users1>(this.url +'Administracion/SaveEmpleados',empleados);
  }
  updateEmpleados( empleados:Users1):Observable<Users1> {
    return this.https.post<Users1>(this.url +'Administracion/UpdateEmpleados',empleados);
  }
}
