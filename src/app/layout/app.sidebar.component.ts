import { Component, ElementRef } from '@angular/core';
import { LayoutService } from "./service/app.layout.service";
import { Users } from '../demo/models/usersModels';

@Component({
    selector: 'app-sidebar',
    templateUrl: './app.sidebar.component.html'
})
export class AppSidebarComponent {
   
    constructor(public layoutService: LayoutService, public el: ElementRef) { }
}

