package Paws::SageMakerA2IRuntime::HumanLoopInputContent;
  use Moose;
  has InputContent => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerA2IRuntime::HumanLoopInputContent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMakerA2IRuntime::HumanLoopInputContent object:

  $service_obj->Method(Att1 => { InputContent => $value, ..., InputContent => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMakerA2IRuntime::HumanLoopInputContent object:

  $result = $service_obj->Method(...);
  $result->Att1->InputContent

=head1 DESCRIPTION

An object containing the input.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputContent => Str

  Serialized input from the human loop.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMakerA2IRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
