package Paws::QLDBSession::ValueHolder;
  use Moose;
  has IonBinary => (is => 'ro', isa => 'Str');
  has IonText => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDBSession::ValueHolder

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QLDBSession::ValueHolder object:

  $service_obj->Method(Att1 => { IonBinary => $value, ..., IonText => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QLDBSession::ValueHolder object:

  $result = $service_obj->Method(...);
  $result->Att1->IonBinary

=head1 DESCRIPTION

A structure that can contains values in multiple encoding formats.

=head1 ATTRIBUTES


=head2 IonBinary => Str

  An Amazon Ion binary value contained in a C<ValueHolder> structure.


=head2 IonText => Str

  An Amazon Ion plaintext value contained in a C<ValueHolder> structure.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QLDBSession>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
