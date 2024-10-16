import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  private url: string = environment.apiUrl;
  constructor(private https:HttpClient) { }

  fnlogin(loginObj:any){
    return this.https.post<any>(`${this.url}Login/authenticate`,loginObj)
  }
}
