import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, tap } from 'rxjs';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  private url: string = environment.apiUrl;
  constructor(private https:HttpClient) { }

  fnlogin(loginObj:any){
    return this.https.post<any>(`${this.url}auth/login`,loginObj).pipe(
      tap(response => {
        // Suponiendo que la respuesta tiene un campo 'user' con los datos del usuario
        localStorage.setItem('token', response.token); // Guarda el token
        localStorage.setItem('userName', response.strUser); // Guarda el nombre del usuario
      })
    );
  }

  getUserName(): string {
    return localStorage.getItem('userName') || ''; // Devuelve el nombre o una cadena vacía
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
    localStorage.removeItem('userName');
    // Puedes realizar más limpieza si es necesario
  }
}
