
package Paws::Glacier::InitiateVaultLock {
  use Moose;
  has accountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId' , required => 1);
  has policy => (is => 'ro', isa => 'Paws::Glacier::VaultLockPolicy');
  has vaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vaultName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InitiateVaultLock');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults/{vaultName}/lock-policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glacier::InitiateVaultLockOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'InitiateVaultLockResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::InitiateVaultLock - Arguments for method InitiateVaultLock on Paws::Glacier

=head1 DESCRIPTION

This class represents the parameters used for calling the method InitiateVaultLock on the 
Amazon Glacier service. Use the attributes of this class
as arguments to method InitiateVaultLock.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to InitiateVaultLock.

As an example:

  $service_obj->InitiateVaultLock(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> accountId => Str

  

The C<AccountId> value is the AWS account ID. This value must match the
AWS account ID associated with the credentials used to sign the
request. You can either specify an AWS account ID or optionally a
single aposC<->apos (hyphen), in which case Amazon Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you specify your account ID, do not include any hyphens (apos-apos) in
the ID.










=head2 policy => Paws::Glacier::VaultLockPolicy

  

The vault lock policy as a JSON string, which uses "\" as an escape
character.










=head2 B<REQUIRED> vaultName => Str

  

The name of the vault.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InitiateVaultLock in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

