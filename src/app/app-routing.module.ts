import { RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';

import { AppLayoutComponent } from "./layout/app.layout.component";
import { LoginComponent } from './demo/components/auth/login/login.component';

@NgModule({
    imports: [
        RouterModule.forRoot([
            {path: '', component: LoginComponent},
            {path: 'dashboard', component: AppLayoutComponent,loadChildren: () => import('./demo/components/dashboard/dashboard.module').then(m => m.DashboardModule)},
            {path: 'administracion', component: AppLayoutComponent,loadChildren: () =>import('./demo/components/pages/pages.module').then(m => m.PagesModule)},
            {path: 'inventario', component: AppLayoutComponent,loadChildren: () =>import('./demo/components/productos/productos.module').then(m => m.ProductosModule)},
           // {path: 'inventario', component: AppLayoutComponent,loadChildren: () =>import('./demo/components/categorias/categorias.module').then(m => m.CategoriasModule)},
            // {               
            //     path: '', component: AppLayoutComponent,
            //     children: [
            //         { path: '', loadChildren: () => import('./demo/components/dashboard/dashboard.module').then(m => m.DashboardModule) },
            //         
            //         { path: 'pages', loadChildren: () => import('./demo/components/pages/pages.module').then(m => m.PagesModule) }
            //     ]
            // },
            { path: 'auth', loadChildren: () => import('./demo/components/auth/auth.module').then(m => m.AuthModule) },
          
          
        ], { scrollPositionRestoration: 'enabled', anchorScrolling: 'enabled', onSameUrlNavigation: 'reload' })
    ],
    exports: [RouterModule]
})
export class AppRoutingModule {
}
