declare module "@salesforce/apex/ers_DatatableController.getCPEReturnResults" {
  export default function getCPEReturnResults(param: {objName: any}): Promise<any>;
}
declare module "@salesforce/apex/ers_DatatableController.getReturnResults" {
  export default function getReturnResults(param: {records: any, fieldNames: any, suppressCurrencyConversion: any}): Promise<any>;
}
declare module "@salesforce/apex/ers_DatatableController.getColumnData" {
  export default function getColumnData(param: {curRR: any, fields: any, objName: any}): Promise<any>;
}
declare module "@salesforce/apex/ers_DatatableController.getLookupData" {
  export default function getLookupData(param: {curRR: any, records: any, lookupFields: any, objName: any}): Promise<any>;
}
declare module "@salesforce/apex/ers_DatatableController.getRowData" {
  export default function getRowData(param: {curRR: any, records: any, dataMap: any, objNameFieldMap: any, lookupFields: any, percentFields: any, objName: any, noEditFields: any, currencyFields: any, numberFields: any, suppressCurrencyConversion: any}): Promise<any>;
}
