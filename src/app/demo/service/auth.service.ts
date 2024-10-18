import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  private url: string = environment.apiUrl;
  constructor(private https:HttpClient) { }

  fnlogin(loginObj:any){
    return this.https.post<any>(`${this.url}auth/login`,loginObj)
  }

  getDashboard(): Observable<any> {
    return this.https.get(`${this.url}dashboard`, {
      headers: {
        'Authorization': `Bearer ${localStorage.getItem('token')}` // Asegúrate de agregar el token de autorización
      }
    });
  }

  logout() {
    // Eliminar el token del localStorage
    localStorage.removeItem('token');
    // Puedes realizar más limpieza si es necesario
  }
}
