import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';

@NgModule({
    imports: [RouterModule.forChild([
        { path: 'products', loadChildren: () => import('./productos/productos.module').then(m => m.ProductosModule) },
        { path: 'categories', loadChildren: () => import('./categorias/categorias.module').then(m => m.CategoriasModule) },
        { path: 'empty', loadChildren: () => import('./empty/emptydemo.module').then(m => m.EmptyDemoModule) },
        { path: '**', redirectTo: '/dashboard' }
    ])],
    exports: [RouterModule]
})
export class ProductosRoutingModule { }
