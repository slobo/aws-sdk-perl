package Paws::Forecast::SchemaAttribute;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str');
  has AttributeType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::SchemaAttribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::SchemaAttribute object:

  $service_obj->Method(Att1 => { AttributeName => $value, ..., AttributeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::SchemaAttribute object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeName

=head1 DESCRIPTION

An attribute of a schema, which defines a dataset field. A schema
attribute is required for every field in a dataset. The Schema object
contains an array of C<SchemaAttribute> objects.

=head1 ATTRIBUTES


=head2 AttributeName => Str

  The name of the dataset field.


=head2 AttributeType => Str

  The data type of the field.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

