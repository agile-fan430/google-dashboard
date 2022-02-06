import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'ngx-dashboard',
  templateUrl: './dashboard.component.html',
})
export class DashboardComponent {
  baseURL: string = 'http://155.138.239.244:3001/';
  // baseURL: string = 'http://localhost:3001/';
  activeAccounts: number;
  blockAccounts: number;
  coupons: number;
  expiration1: number;
  expiration5: number;
  expiration0: number;

  constructor(private http: HttpClient) {
    this.http.get(this.baseURL + 'customers/dashboard')
      .subscribe((data: any) => {
        this.activeAccounts = data.active;
        this.blockAccounts = data.block;
      });
    
    this.http.get(this.baseURL + 'customers/getCouponExpiration')
      .subscribe((data: any) => {
        this.coupons = data.coupon[0].amount;
        this.expiration1 = data.expiration1[0].amount - data.coupon[0].amount;
        if(this.expiration1 < 0) {
          this.expiration1 = 0;
        }
        this.expiration5 = data.expiration5[0].amount - data.coupon[0].amount;
        if(this.expiration5 < 0) {
          this.expiration5 = 0;
        }
        this.expiration0 = data.expiration0[0].amount - data.coupon[0].amount;
        if(this.expiration0 < 0) {
          this.expiration0 = 0;
        }
      });
  }
}
