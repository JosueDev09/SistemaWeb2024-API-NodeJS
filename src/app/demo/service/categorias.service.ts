import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Categorias1 } from '../models/categoriasModels';
import { SubCategorias1 } from '../models/subCategorias.Models';

@Injectable({
  providedIn: 'root'
})
export class CategoriasService {

  private url: string = environment.apiUrl;
  constructor(private https:HttpClient) { }

  listCategorias() {
    return this.https.get(this.url + 'Inventario/Categorias');
  }
  listSubCategorias() {
    return this.https.get(this.url + 'Inventario/SubCategorias');
  }

  listCategoriasSub() { 
    return this.https.get<any>(this.url + 'Inventario/CategoriasSub');
  }

  addSubCategorias(subCategorias:SubCategorias1):Observable<SubCategorias1> {
    return this.https.post<SubCategorias1>(this.url +'Inventario/SaveSubCategorias',subCategorias);
  }
  addCategorias(categorias:Categorias1):Observable<Categorias1> {
    return this.https.post<Categorias1>(this.url +'Inventario/SaveCategorias',categorias);
  }
  updateCategorias( categorias:Categorias1):Observable<Categorias1> {
    return this.https.post<Categorias1>(this.url +'Inventario/UpdateCategorias',categorias);
  }


}
