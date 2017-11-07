
package Paws::ElasticBeanstalk::UpdateTagsForResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has TagsToAdd => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::Tag]');
  has TagsToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTagsForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::UpdateTagsForResource - Arguments for method UpdateTagsForResource on Paws::ElasticBeanstalk

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTagsForResource on the 
AWS Elastic Beanstalk service. Use the attributes of this class
as arguments to method UpdateTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTagsForResource.

As an example:

  $service_obj->UpdateTagsForResource(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resouce to be updated.

Must be the ARN of an Elastic Beanstalk environment.



=head2 TagsToAdd => ArrayRef[L<Paws::ElasticBeanstalk::Tag>]

A list of tags to add or update.

If a key of an existing tag is added, the tag's value is updated.



=head2 TagsToRemove => ArrayRef[Str|Undef]

A list of tag keys to remove.

If a tag key doesn't exist, it is silently ignored.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTagsForResource in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
