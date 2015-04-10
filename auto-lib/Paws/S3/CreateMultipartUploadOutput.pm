
package Paws::S3::CreateMultipartUploadOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Bucket => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');
  has RequestCharged => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has SSEKMSKeyId => (is => 'ro', isa => 'Str');
  has UploadId => (is => 'ro', isa => 'Str');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3:: - Arguments for method  on Paws::S3

=head1 DESCRIPTION

This class represents the parameters used for calling the method  on the 
Amazon Simple Storage Service service. Use the attributes of this class
as arguments to method .

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to .

As an example:

  $service_obj->(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 Bucket => Str

  

Name of the bucket to which the multipart upload was initiated.










=head2 Key => Str

  

Object key for which the multipart upload was initiated.










=head2 RequestCharged => Str

  

=head2 ServerSideEncryption => Str

  

The Server-side encryption algorithm used when storing this object in
S3 (e.g., AES256, aws:kms).










=head2 SSECustomerAlgorithm => Str

  

If server-side encryption with a customer-provided encryption key was
requested, the response will include this header confirming the
encryption algorithm used.










=head2 SSECustomerKeyMD5 => Str

  

If server-side encryption with a customer-provided encryption key was
requested, the response will include this header to provide round trip
message integrity verification of the customer-provided encryption key.










=head2 SSEKMSKeyId => Str

  

If present, specifies the ID of the AWS Key Management Service (KMS)
master encryption key that was used for the object.










=head2 UploadId => Str

  

ID for the initiated multipart upload.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method  in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

