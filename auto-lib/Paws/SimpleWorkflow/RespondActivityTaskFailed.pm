
package Paws::SimpleWorkflow::RespondActivityTaskFailed {
  use Moose;
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskFailed');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::RespondActivityTaskFailed - Arguments for method RespondActivityTaskFailed on Paws::SimpleWorkflow

=head1 DESCRIPTION

This class represents the parameters used for calling the method RespondActivityTaskFailed on the 
Amazon Simple Workflow Service service. Use the attributes of this class
as arguments to method RespondActivityTaskFailed.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to RespondActivityTaskFailed.

As an example:

  $service_obj->RespondActivityTaskFailed(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 details => Str

  

I<Optional.> Detailed information about the failure.










=head2 reason => Str

  

Description of the error that may assist in diagnostics.










=head2 B<REQUIRED> taskToken => Str

  

The C<taskToken> of the ActivityTask.

C<taskToken> is generated by the service and should be treated as an
opaque value. If the task is passed to another process, its
C<taskToken> must also be passed. This enables it to provide its
progress and respond with results.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RespondActivityTaskFailed in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

