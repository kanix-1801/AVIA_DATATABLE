declare module "@salesforce/apex/RetrieveMetadata.RetrieveMetadataItem" {
  export default function RetrieveMetadataItem(param: {metadataName: any}): Promise<any>;
}
declare module "@salesforce/apex/RetrieveMetadata.RetrieveMetadataItemV2" {
  export default function RetrieveMetadataItemV2(param: {metadataName: any, metadataType: any}): Promise<any>;
}
declare module "@salesforce/apex/RetrieveMetadata.checkAsyncRequest" {
  export default function checkAsyncRequest(param: {jobId: any}): Promise<any>;
}
declare module "@salesforce/apex/RetrieveMetadata.getFileNames" {
  export default function getFileNames(param: {zipfile: any}): Promise<any>;
}
