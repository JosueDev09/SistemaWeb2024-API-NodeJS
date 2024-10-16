import { OnInit } from '@angular/core';
import { Component } from '@angular/core';
import { LayoutService } from './service/app.layout.service';

@Component({
    selector: 'app-menu',
    templateUrl: './app.menu.component.html'
})
export class AppMenuComponent implements OnInit {

    model: any[] = [];

    constructor(public layoutService: LayoutService) { }

    ngOnInit() {
        this.model = [
            {
                label: 'Inicio',
                items: [
                    { label: 'Dashboard', icon: 'pi pi-fw pi-home', routerLink: ['/dashboard'] }
                ]
            },
            
            
            {
                label: 'Administración',
                icon: 'pi pi-fw pi-briefcase',
                items: [
                  
                    {
                        label: 'Empleados',
                        icon: 'pi pi-fw pi-users',
                        routerLink: ['/administracion/empleados']
                    },
                    
                    {
                        label: 'Empty',
                        icon: 'pi pi-fw pi-circle-off',
                        routerLink: ['/administracion/empty']
                    },
                ]
            },
            {
                label: 'Inventario',
                icon: 'pi pi-fw pi-briefcase',
                items: [
                  
                    {
                        label: 'Productos',
                        icon: 'pi pi-fw pi-box',
                        routerLink: ['/inventario/productos']
                    },
                    {
                        label: 'Categorias',
                        icon: 'pi pi-fw pi-book',
                        routerLink: ['/inventario/categorias']
                    },
                    
                    {
                        label: 'Empty',
                        icon: 'pi pi-fw pi-circle-off',
                        routerLink: ['/inventario/empty']
                    },
                ]
            },
            
            
        ];
    }
}
