import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { PagesRoutingModule } from './pages-routing.module';
import { TableModule } from 'primeng/table';
import { TabViewModule } from 'primeng/tabview';


@NgModule({
    declarations: [],
    imports: [
        CommonModule,
        PagesRoutingModule,
        TableModule,
        TabViewModule
        
    ]
})
export class PagesModule { }
