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
    return this.https.get(`${this.url}/Administracion/EmployeesList`, {
      headers: {
        'Authorization': `Bearer ${localStorage.getItem('token')}` // Asegúrate de agregar el token de autorización
      }
    });
  }
 
    // Method to retrieve a list of employees
    listEmployees(): Observable<Users[]> {
      // Sends a GET request to the specified URL and returns an Observable of Users array
      return this.https.get<Users[]>(this.url + 'Administration/EmployeesList');
    }

    // Method to retrieve a list of roles
    listRol(): Observable<any[]> {
      // Sends a GET request to the specified URL and returns an Observable of any array (roles)
      return this.https.get<any>(this.url + 'Administration/RoleList');
    }

    // Method to add a new employee
    addEmployees(employees: Users1): Observable<Users1> {
      // Sends a POST request with employee data to save a new employee and returns an Observable of Users1
      return this.https.post<Users1>(this.url + 'Administration/SaveEmployees', employees);
    }

    // Method to update an existing employee
    updateEmployees(employees: Users1): Observable<Users1> {
      // Sends a POST request with updated employee data to update an existing employee and returns an Observable of Users1
      return this.https.post<Users1>(this.url + 'Administration/UpdateEmployees', employees);
    }
}
