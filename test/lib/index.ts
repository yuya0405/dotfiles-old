import * as cdk from '@aws-cdk/core';

export interface TestProps {
  // Define construct properties here
}

export class Test extends cdk.Construct {

  constructor(scope: cdk.Construct, id: string, props: TestProps = {}) {
    super(scope, id);

    // Define construct contents here
  }
}
