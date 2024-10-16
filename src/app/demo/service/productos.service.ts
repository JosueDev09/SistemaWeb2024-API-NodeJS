import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Productos1 } from '../models/productosModels';

@Injectable({
  providedIn: 'root'
})
export class ProductosService {
  private url: string = environment.apiUrl;
  constructor(private https:HttpClient) { }

  listProductos() {
    return this.https.get(this.url + 'Inventario/Productos');
  }

  listProductosCategorias():Observable<any[]> {
    return this.https.get<any>(this.url + 'Inventario/CategoriasProductos');
  }

  listColoresProductos():Observable<any[]> {
    return this.https.get<any>(this.url + 'Inventario/ColoresProductos');
  }

  listTallasProductos():Observable<any[]> {
    return this.https.get<any>(this.url + 'Inventario/TallaProductos');
  }

  addProductos(productos:Productos1):Observable<Productos1> {
    return this.https.post<Productos1>(this.url +'Inventario/SaveProductos',productos);
  }
  updateProductos( productos:Productos1):Observable<Productos1> {
    return this.https.post<Productos1>(this.url +'Inventario/UpdateProdcutos',productos);
  }
}
