package Paws::IoT::ThingGroupIndexingConfiguration;
  use Moose;
  has CustomFields => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Field]', request_name => 'customFields', traits => ['NameInRequest']);
  has ManagedFields => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Field]', request_name => 'managedFields', traits => ['NameInRequest']);
  has ThingGroupIndexingMode => (is => 'ro', isa => 'Str', request_name => 'thingGroupIndexingMode', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ThingGroupIndexingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ThingGroupIndexingConfiguration object:

  $service_obj->Method(Att1 => { CustomFields => $value, ..., ThingGroupIndexingMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ThingGroupIndexingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomFields

=head1 DESCRIPTION

Thing group indexing configuration.

=head1 ATTRIBUTES


=head2 CustomFields => ArrayRef[L<Paws::IoT::Field>]

  A list of thing group fields to index. This list cannot contain any
managed fields. Use the GetIndexingConfiguration API to get a list of
managed fields.


=head2 ManagedFields => ArrayRef[L<Paws::IoT::Field>]

  A list of automatically indexed thing group fields.


=head2 B<REQUIRED> ThingGroupIndexingMode => Str

  Thing group indexing mode.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

