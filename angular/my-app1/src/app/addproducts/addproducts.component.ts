import { Component, OnInit } from '@angular/core';
import { CommonService } from '../common.service';
import { FormBuilder, FormControl, FormGroup } from '@angular/forms';

@Component({
  selector: 'app-addproducts',
  templateUrl: './addproducts.component.html',
  styleUrl: './addproducts.component.css'
})
export class AddproductsComponent implements OnInit {

  productForm!: FormGroup;
  productPage: any = {
    id: '',
    title: ''
  };
  sendData: any;

  constructor(private httpProvider: CommonService,
    private formbuilder: FormBuilder
  ) {
    this.productForm = this.formbuilder.group({title: new FormControl()});
  }

  ngOnInit(): void { }

  onAddProduct(productData: any){
    this.sendData = {
      title: productData.title
    }
    this.httpProvider.saveProducts(this.sendData).subscribe(
      result => {
        console.log(result)
        return result;
      },
      error => {
        console.log(error);
        return error;
      }
    );
  }

}
