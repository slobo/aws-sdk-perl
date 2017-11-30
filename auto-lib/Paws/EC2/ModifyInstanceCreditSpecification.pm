
package Paws::EC2::ModifyInstanceCreditSpecification;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceCreditSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceCreditSpecificationRequest]', traits => ['NameInRequest'], request_name => 'InstanceCreditSpecification' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceCreditSpecification');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyInstanceCreditSpecificationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceCreditSpecification - Arguments for method ModifyInstanceCreditSpecification on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyInstanceCreditSpecification on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method ModifyInstanceCreditSpecification.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyInstanceCreditSpecification.

As an example:

  $service_obj->ModifyInstanceCreditSpecification(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive token that you provide to ensure idempotency
of your modification request. For more information, see Ensuring
Idempotency
(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceCreditSpecifications => ArrayRef[L<Paws::EC2::InstanceCreditSpecificationRequest>]

Information about the credit option for CPU usage.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyInstanceCreditSpecification in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
