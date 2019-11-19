package Paws::Forecast::ForecastSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DatasetGroupArn => (is => 'ro', isa => 'Str');
  has ForecastArn => (is => 'ro', isa => 'Str');
  has ForecastName => (is => 'ro', isa => 'Str');
  has LastModificationTime => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has PredictorArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ForecastSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::ForecastSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::ForecastSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Provides a summary of the forecast properties used in the ListForecasts
operation. To get the complete set of properties, call the
DescribeForecast operation, and provide the listed C<ForecastArn>.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  When the forecast creation task was created.


=head2 DatasetGroupArn => Str

  The Amazon Resource Name (ARN) of the dataset group that provided the
data used to train the predictor.


=head2 ForecastArn => Str

  The ARN of the forecast.


=head2 ForecastName => Str

  The name of the forecast.


=head2 LastModificationTime => Str

  Initially, the same as C<CreationTime> (status is C<CREATE_PENDING>).
Updated when inference (creating the forecast) starts (status changed
to C<CREATE_IN_PROGRESS>), and when inference is complete (status
changed to C<ACTIVE>) or fails (status changed to C<CREATE_FAILED>).


=head2 Message => Str

  If an error occurred, an informational message about the error.


=head2 PredictorArn => Str

  The ARN of the predictor used to generate the forecast.


=head2 Status => Str

  The status of the forecast. States include:

=over

=item *

C<ACTIVE>

=item *

C<CREATE_PENDING>, C<CREATE_IN_PROGRESS>, C<CREATE_FAILED>

=item *

C<DELETE_PENDING>, C<DELETE_IN_PROGRESS>, C<DELETE_FAILED>

=back

The C<Status> of the forecast must be C<ACTIVE> before you can query or
export the forecast.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
