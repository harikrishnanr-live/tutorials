import { NgModule } from '@angular/core';
import { BrowserModule, provideClientHydration } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ListComponent } from './list/list.component';
import { HttpClientModule } from '@angular/common/http';
import { Routes, RouterModule } from '@angular/router';
import { AddproductsComponent } from './addproducts/addproducts.component';
import { EditproductsComponent } from './editproducts/editproducts.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

const routes: Routes = [
  { path: '', component: ListComponent, pathMatch: 'full' },
  { path: 'add-products', component: AddproductsComponent },
  // { path: 'ViewEmployee/:employeeId', component: ViewEmployeeComponent },
  // { path: 'AddEmployee', component: AddEmployeeComponent },
  // { path: 'EditEmployee/:employeeId', component: EditEmployeeComponent } 
];

@NgModule({
  declarations: [
    AppComponent,
    ListComponent,
    AddproductsComponent,
    EditproductsComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    RouterModule.forRoot(routes),
  ],
  exports: [RouterModule, ReactiveFormsModule],
  providers: [
    provideClientHydration()
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
