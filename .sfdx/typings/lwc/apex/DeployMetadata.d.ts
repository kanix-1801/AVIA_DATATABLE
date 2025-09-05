declare module "@salesforce/apex/DeployMetadata.deploy" {
  export default function deploy(param: {metadataText: any, metadataName: any, testLevel: any, objectType: any}): Promise<any>;
}
declare module "@salesforce/apex/DeployMetadata.checkAsyncRequest" {
  export default function checkAsyncRequest(param: {jobId: any}): Promise<any>;
}
