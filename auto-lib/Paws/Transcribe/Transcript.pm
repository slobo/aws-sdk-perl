package Paws::Transcribe::Transcript;
  use Moose;
  has TranscriptFileUri => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::Transcript

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transcribe::Transcript object:

  $service_obj->Method(Att1 => { TranscriptFileUri => $value, ..., TranscriptFileUri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transcribe::Transcript object:

  $result = $service_obj->Method(...);
  $result->Att1->TranscriptFileUri

=head1 DESCRIPTION

Describes the output of a transcription job.

=head1 ATTRIBUTES


=head2 TranscriptFileUri => Str

  The S3 location where the transcription result is stored. The general
form of this Uri is:

C<https://E<lt>aws-regionE<gt>.amazonaws.com/E<lt>bucket-nameE<gt>/E<lt>keyprefixE<gt>/E<lt>objectkeyE<gt>>

For example:

C<https://s3-us-west-2.amazonaws.com/examplebucket/example.json>

C<https://s3-us-west-2.amazonaws.com/examplebucket/mediadocs/example.json>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
