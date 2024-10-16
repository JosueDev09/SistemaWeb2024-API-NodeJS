import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { CategoriasComponent } from './categorias.component';

@NgModule({
	imports: [RouterModule.forChild([
		{ path: '', component: CategoriasComponent }
	])],
	exports: [RouterModule]
})
export class CategoriasRoutingModule { }
