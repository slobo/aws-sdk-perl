
package Paws::CodeDeploy::BatchGetApplications {
  use Moose;
  has applicationNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetApplications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::BatchGetApplicationsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetApplications - Arguments for method BatchGetApplications on Paws::CodeDeploy

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetApplications on the 
AWS CodeDeploy service. Use the attributes of this class
as arguments to method BatchGetApplications.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetApplications.

As an example:

  $service_obj->BatchGetApplications(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 applicationNames => ArrayRef[Str]

  

A list of application names, with multiple application names separated
by spaces.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetApplications in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

