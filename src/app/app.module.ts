import { NgModule } from '@angular/core';
import { HashLocationStrategy, LocationStrategy, PathLocationStrategy } from '@angular/common';
import { AppComponent } from './app.component';
import { AppRoutingModule } from './app-routing.module';
import { AppLayoutModule } from './layout/app.layout.module';

import { ProductService } from './demo/service/product.service';

import { ReactiveFormsModule } from '@angular/forms';
import { TableModule } from 'primeng/table';

@NgModule({
    declarations: [AppComponent],
    imports: [AppRoutingModule, AppLayoutModule,TableModule],
    providers: [
        { provide: LocationStrategy, 
            useClass: PathLocationStrategy },
         ProductService,
         ReactiveFormsModule
    ],
    bootstrap: [AppComponent],
})
export class AppModule {}
