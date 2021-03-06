
package Paws::ElasticBeanstalk::DescribeInstancesHealth {
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstancesHealth');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::DescribeInstancesHealthResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInstancesHealthResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribeInstancesHealth - Arguments for method DescribeInstancesHealth on Paws::ElasticBeanstalk

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstancesHealth on the 
AWS Elastic Beanstalk service. Use the attributes of this class
as arguments to method DescribeInstancesHealth.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstancesHealth.

As an example:

  $service_obj->DescribeInstancesHealth(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 AttributeNames => ArrayRef[Str]

  

Specifies the response elements you wish to receive. If no attribute
names are specified, AWS Elastic Beanstalk returns all response
elements.










=head2 EnvironmentId => Str

  

Specifies the AWS Elastic Beanstalk environment ID.










=head2 EnvironmentName => Str

  

Specifies the AWS Elastic Beanstalk environment name.










=head2 NextToken => Str

  

Specifies the next token of the request.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstancesHealth in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

