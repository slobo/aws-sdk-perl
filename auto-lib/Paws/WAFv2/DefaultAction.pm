package Paws::WAFv2::DefaultAction;
  use Moose;
  has Allow => (is => 'ro', isa => 'Paws::WAFv2::AllowAction');
  has Block => (is => 'ro', isa => 'Paws::WAFv2::BlockAction');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::DefaultAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::DefaultAction object:

  $service_obj->Method(Att1 => { Allow => $value, ..., Block => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::DefaultAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Allow

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

In a C<WebACL>, this is the action that you want AWS WAF to perform
when a web request doesn't match any of the rules in the C<WebACL>. The
default action must be a terminating action, so count is not allowed.

=head1 ATTRIBUTES


=head2 Allow => L<Paws::WAFv2::AllowAction>

  Specifies that AWS WAF should allow requests by default.


=head2 Block => L<Paws::WAFv2::BlockAction>

  Specifies that AWS WAF should block requests by default.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
