import { Component } from '@angular/core';
import { ServerDataSource } from 'ng2-smart-table';
import { HttpClient } from '@angular/common/http';
import { CSVRecord } from './CSVRecord';

@Component({
  selector: 'coupon',
  templateUrl: './coupon.component.html'
})
export class CouponComponent {
  baseURL: string = 'http://155.138.239.244:3001/';
  // baseURL: string = 'http://localhost:3001/';

  coupons: number;
  expiration1: number;
  expiration5: number;
  expiration0: number;

  settings = {
    add: {
      addButtonContent: '<i class="nb-plus"></i>',
      createButtonContent: '<i class="nb-checkmark"></i>',
      cancelButtonContent: '<i class="nb-close"></i>',
      confirmCreate: true,
    },
    edit: {
      editButtonContent: '<i class="nb-edit"></i>',
      saveButtonContent: '<i class="nb-checkmark"></i>',
      cancelButtonContent: '<i class="nb-close"></i>',
      confirmSave: true,
    },
    delete: {
      deleteButtonContent: '<i class="nb-trash"></i>',
      confirmDelete: true,
    },
    columns: {
      id: {
        title: 'ID',
        type: 'number',
        filter: false,
        valuePrepareFunction: (value,row,cell) => {
          return (this.source.getPaging().page - 1) * this.source.getPaging().perPage + cell.row.index + 1;
        },
      },
      couponNo: {
        title: 'Coupon No',
        type: 'string',
        filter: false,
      },
      isUsed: {
        title: 'Status',
        type: 'number',
        editor: {
          type: 'list',
          config: {
            list: [{ value: 0, title: 'Available'}, { value: 1, title: 'Used'}],
          },
        },
        filter: false,
        valuePrepareFunction: (value,row,cell) => {
          console.log(value);
          if(value === 0 || value === '0') {
            return 'Available';
          } else {
            return 'Used';
          }
        },
      },
    },
  };

  source: ServerDataSource;

  constructor(private http: HttpClient) {
    this.source = new ServerDataSource(this.http, {endPoint: this.baseURL + 'coupons', dataKey: 'data', totalKey: 'total'});

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

  csvResult: any[];

  uploadListener($event: any): void {

    const files = $event.srcElement.files;

    if (this.isValidCSVFile(files[0])) {

      const input = $event.target;
      const reader = new FileReader();
      reader.readAsText(input.files[0]);

      reader.onload = () => {
        const csvData = reader.result;
        const csvRecordsArray = (<string>csvData).split(/\r\n|\n/);

        const headersRow = this.getHeaderArray(csvRecordsArray);

        this.csvResult = this.getDataRecordsArrayFromCSVFile(csvRecordsArray, headersRow.length);
        this.http.post(this.baseURL + 'coupons/upload', {coupons: this.csvResult})
          .subscribe(data => {
            this.source.append(data);
          });
      };

      reader.onerror = function () {
        console.log('error is occured while reading file!');
      };

    } else {
      alert('Please import valid .csv file.');
      this.fileReset();
    }
  }

  getDataRecordsArrayFromCSVFile(csvRecordsArray: any, headerLength: any) {
    const csvArr = [];

    for (let i = 1; i < csvRecordsArray.length; i++) {
      const curruntRecord = (<string>csvRecordsArray[i]).split(',');
      if (curruntRecord.length == headerLength) {
        const csvRecord: CSVRecord = new CSVRecord();
        csvRecord.couponNo = curruntRecord[0].trim();
        csvRecord.isUsed = 0;
        csvArr.push(csvRecord);
      }
    }
    return csvArr;
  }

  isValidCSVFile(file: any) {
    return file.name.endsWith('.csv');
  }

  getHeaderArray(csvRecordsArr: any) {
    const headers = (<string>csvRecordsArr[0]).split(',');
    const headerArray = [];
    for (let j = 0; j < headers.length; j++) {
      headerArray.push(headers[j]);
    }
    return headerArray;
  }

  fileReset() {
    this.csvResult = [];
  }

  onSearch(query: string = '') {
    if (query == '') {
      this.source.setFilter([]);
    } else {
      this.source.setFilter([
        {
          field: 'couponNo',
          search: query,
        },
      ], false);
    }
  }

  onCreateConfirm(event): void {
    this.http.post(this.baseURL, event.newData)
      .subscribe(data => {
        this.source.add(data);
        event.confirm.resolve();
      }, error => {
        console.log(error);
        event.confirm.reject();
      });
  }

  onEditConfirm(event): void {
    this.http.put(this.baseURL + `/${event.newData.id}`, event.newData)
      .subscribe(data => {
        event.confirm.resolve(data);
      }, error => {
        console.log(error);
        event.confirm.reject();
      });
  }

  onDeleteConfirm(event): void {
    if (window.confirm('Are you sure you want to delete?')) {
      this.http.delete(this.baseURL + `/${event.data.id}`)
      .subscribe(data => {
        event.confirm.resolve(data);
      }, error => {
        console.log(error);
        event.confirm.reject();
      });
    } else {
      event.confirm.reject();
    }
  }
}
