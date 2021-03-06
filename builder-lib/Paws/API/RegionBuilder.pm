package Paws::API::RegionBuilder {
  use Moose;
  use autodie;
  use JSON;
  use Data::Dumper;
  use Template;

  has rules =>   (is => 'rw', isa => 'Str', required => 1);
  has service => (is => 'ro', isa => 'Str', required => 1);

  has json => ( 
    is => 'ro', 
    lazy => 1,
    default => sub {
      my $self = shift;
      my $json = JSON->new->pretty;
      $json = $json->relaxed([1]); # At some point input did fail without this
      local $/ = undef;
      open my $fh, '<', $self->rules;
      $json = <$fh>;
      close $fh;
      return decode_json($json)->{ $self->service };
    }
  );

  has perl_ds => (
    is => 'ro',
    isa => 'Str',
    lazy => 1,
    default => sub {
      my $self = shift;
      my $d = Data::Dumper->new([ $self->json ], [ 'regioninfo' ]);
      $d->Indent(1);
      $d->Pad('  ');
      $d->Quotekeys(0);
      $d->Sortkeys(1);
      return $d->Dump;
    }
  );

   has region_accessor_template => (is => 'ro', isa => 'Str', default => q#
  has '+region_rules' => (default => sub {
    my $regioninfo;
    [% c.perl_ds %]
    return $regioninfo;
  });
#);

  sub region_accessor {
    my ($self) = @_;
    if (defined $self->json) {
      my $tt = Template->new;
      my $template = $self->region_accessor_template;
      my $output = '';
      $tt->process(\$template, { c => $self }, \$output) || die $tt->error();
      return $output;
    } else {
      return '';
    }
  }
}
1;

