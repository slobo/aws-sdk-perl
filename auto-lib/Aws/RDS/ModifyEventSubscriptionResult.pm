
package Aws::RDS::ModifyEventSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Aws::RDS::EventSubscription');

}
1;