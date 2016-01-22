package Paws::IoT::FirehoseAction;
  use Moose;
  has DeliveryStreamName => (is => 'ro', isa => 'Str', xmlname => 'deliveryStreamName', request_name => 'deliveryStreamName', traits => ['Unwrapped','NameInRequest'], required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', xmlname => 'roleArn', request_name => 'roleArn', traits => ['Unwrapped','NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::FirehoseAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::FirehoseAction object:

  $service_obj->Method(Att1 => { DeliveryStreamName => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::FirehoseAction object:

  $result = $service_obj->Method(...);
  $result->Att1->DeliveryStreamName

=head1 DESCRIPTION

Describes an action that writes data to a Kinesis Firehose stream.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryStreamName => Str

  The delivery stream name.


=head2 B<REQUIRED> RoleArn => Str

  The IAM role that grants access to the firehose stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

