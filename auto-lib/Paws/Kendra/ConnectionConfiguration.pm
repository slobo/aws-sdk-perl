package Paws::Kendra::ConnectionConfiguration;
  use Moose;
  has DatabaseHost => (is => 'ro', isa => 'Str', required => 1);
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has DatabasePort => (is => 'ro', isa => 'Int', required => 1);
  has SecretArn => (is => 'ro', isa => 'Str', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ConnectionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::ConnectionConfiguration object:

  $service_obj->Method(Att1 => { DatabaseHost => $value, ..., TableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::ConnectionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DatabaseHost

=head1 DESCRIPTION

Provides the information necessary to connect to a database.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatabaseHost => Str

  The name of the host for the database. Can be either a string
(host.subdomain.domain.tld) or an IPv4 or IPv6 address.


=head2 B<REQUIRED> DatabaseName => Str

  The name of the database containing the document data.


=head2 B<REQUIRED> DatabasePort => Int

  The port that the database uses for connections.


=head2 B<REQUIRED> SecretArn => Str

  The Amazon Resource Name (ARN) of credentials stored in AWS Secrets
Manager. The credentials should be a user/password pair. For more
information, see Using a Database Data Source
(https://docs.aws.amazon.com/kendra/latest/dg/data-source-database.html).
For more information about AWS Secrets Manager, see What Is AWS Secrets
Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html)
in the I<AWS Secrets Manager> user guide.


=head2 B<REQUIRED> TableName => Str

  The name of the table that contains the document data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
