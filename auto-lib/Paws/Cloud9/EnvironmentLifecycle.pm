package Paws::Cloud9::EnvironmentLifecycle;
  use Moose;
  has FailureResource => (is => 'ro', isa => 'Str', request_name => 'failureResource', traits => ['NameInRequest']);
  has Reason => (is => 'ro', isa => 'Str', request_name => 'reason', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::EnvironmentLifecycle

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Cloud9::EnvironmentLifecycle object:

  $service_obj->Method(Att1 => { FailureResource => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Cloud9::EnvironmentLifecycle object:

  $result = $service_obj->Method(...);
  $result->Att1->FailureResource

=head1 DESCRIPTION

Information about the current creation or deletion lifecycle state of
an AWS Cloud9 development environment.

=head1 ATTRIBUTES


=head2 FailureResource => Str

  If the environment failed to delete, the Amazon Resource Name (ARN) of
the related AWS resource.


=head2 Reason => Str

  Any informational message about the lifecycle state of the environment.


=head2 Status => Str

  The current creation or deletion lifecycle state of the environment.

=over

=item *

C<CREATING>: The environment is in the process of being created.

=item *

C<CREATED>: The environment was successfully created.

=item *

C<CREATE_FAILED>: The environment failed to be created.

=item *

C<DELETING>: The environment is in the process of being deleted.

=item *

C<DELETE_FAILED>: The environment failed to delete.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Cloud9>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
