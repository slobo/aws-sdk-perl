package Paws::Rekognition::TestingDataResult;
  use Moose;
  has Input => (is => 'ro', isa => 'Paws::Rekognition::TestingData');
  has Output => (is => 'ro', isa => 'Paws::Rekognition::TestingData');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::TestingDataResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::TestingDataResult object:

  $service_obj->Method(Att1 => { Input => $value, ..., Output => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::TestingDataResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Input

=head1 DESCRIPTION

A Sagemaker Groundtruth format manifest file representing the dataset
used for testing.

=head1 ATTRIBUTES


=head2 Input => L<Paws::Rekognition::TestingData>

  The testing dataset that was supplied for training.


=head2 Output => L<Paws::Rekognition::TestingData>

  The subset of the dataset that was actually tested. Some images
(assets) might not be tested due to file formatting and other issues.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
