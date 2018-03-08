
package Paws::LexModels::GetImport;
  use Moose;
  has ImportId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'importId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetImport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/imports/{importId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetImportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetImport - Arguments for method GetImport on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetImport on the 
Amazon Lex Model Building Service service. Use the attributes of this class
as arguments to method GetImport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetImport.

As an example:

  $service_obj->GetImport(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportId => Str

The identifier of the import job information to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetImport in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
