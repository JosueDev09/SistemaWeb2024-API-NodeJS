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
                label: 'Home',
                items: [
                    { label: 'Dashboard', icon: 'pi pi-fw pi-home', routerLink: ['/dashboard'] }
                ]
            },
            
            
            {
                label: 'Administration',
                icon: 'pi pi-fw pi-briefcase',
                items: [
                  
                    {
                        label: 'Employees',
                        icon: 'pi pi-fw pi-users',
                        routerLink: ['/administration/Employees']
                    },
                    
                    {
                        label: 'Empty',
                        icon: 'pi pi-fw pi-circle-off',
                        routerLink: ['/administration/empty']
                    },
                ]
            },
            {
                label: 'Inventory ',
                icon: 'pi pi-fw pi-briefcase',
                items: [
                  
                    {
                        label: 'Products',
                        icon: 'pi pi-fw pi-box',
                        routerLink: ['/inventory/products']
                    },
                    {
                        label: 'Categories',
                        icon: 'pi pi-fw pi-book',
                        routerLink: ['/inventory/categories']
                    },
                    
                    {
                        label: 'Empty',
                        icon: 'pi pi-fw pi-circle-off',
                        routerLink: ['/inventory/empty']
                    },
                ]
            },
            
            
        ];
    }
}
