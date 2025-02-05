import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';


@NgModule({
    imports: [RouterModule.forChild([
        { path: 'Employees', loadChildren: () => import('./crud/crud.module').then(m => m.CrudModule), },
        { path: 'Orders', loadChildren: () => import('./orders/orders.module').then(m => m.OrdersModule), },
        { path: 'Clients', loadChildren: () => import('./clients/clients.module').then(m => m.ClientsModule), },
        { path: 'empty', loadChildren: () => import('./empty/emptydemo.module').then(m => m.EmptyDemoModule) },
        { path: '**', redirectTo: '/Employees' }
    ])],
    exports: [RouterModule]
})
export class PagesRoutingModule { }
