package Paws::LicenseManager::OrganizationConfiguration;
  use Moose;
  has EnableIntegration => (is => 'ro', isa => 'Bool', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::OrganizationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LicenseManager::OrganizationConfiguration object:

  $service_obj->Method(Att1 => { EnableIntegration => $value, ..., EnableIntegration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LicenseManager::OrganizationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->EnableIntegration

=head1 DESCRIPTION

Configuration information for AWS Organizations.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnableIntegration => Bool

  Enables AWS Organization integration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

