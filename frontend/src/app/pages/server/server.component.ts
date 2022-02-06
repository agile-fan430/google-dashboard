import { Component } from '@angular/core';
import { ServerDataSource } from 'ng2-smart-table';
import { HttpClient } from '@angular/common/http';
import { CSVRecord } from './CSVRecord';

@Component({
  selector: 'server',
  templateUrl: './server.component.html'
})
export class ServerComponent {
  baseURL: string = 'http://155.138.239.244:3001/servers';
  // baseURL: string = 'http://localhost:3001/coupons';

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
      server_id: {
        title: 'Server No',
        type: 'string',
        filter: false,
      },
      ip_address: {
        title: "IP Address",
        type: 'string',
        filter: false
      },
      password: {
        title: "Password",
        type: "string",
        filter: false
      }
    },
  };

  source: ServerDataSource;

  constructor(private http: HttpClient) {
    this.source = new ServerDataSource(this.http, {endPoint: this.baseURL, dataKey: 'data', totalKey: 'total'});
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
        this.http.post(this.baseURL + '/upload', {servers: this.csvResult})
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
        csvRecord.server_id = curruntRecord[0].trim();
        csvRecord.ip_address = curruntRecord[1].trim();
        csvRecord.password = curruntRecord[2].trim();
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
