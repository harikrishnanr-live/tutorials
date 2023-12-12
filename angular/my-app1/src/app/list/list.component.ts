import { Component } from '@angular/core';
import { CommonService } from '../common.service';
import { Router } from 'express-serve-static-core';

@Component({
  selector: 'app-list',
  templateUrl: './list.component.html',
  styleUrl: './list.component.css'
})
export class ListComponent {
  employeeList: any = [];
  constructor(
    // private router: Router,
    private httpProvider: CommonService
  ) { }

  ngOnInit(): void {
    this.getAllProducts();
  }

  async getAllProducts() {
    this.httpProvider.getAllProducts().subscribe((data: any) => {
      // console.log(data.products)
      this.employeeList = data.products
    },
      (error: any) => {
        if (error) {
          if (error.status == 404) {
            if (error.error && error.error.message) {
              this.employeeList = [];
            }
          }
        }
      });
  }

}
