package Paws::CostExplorer::SavingsPlansSavings;
  use Moose;
  has NetSavings => (is => 'ro', isa => 'Str');
  has OnDemandCostEquivalent => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::SavingsPlansSavings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::SavingsPlansSavings object:

  $service_obj->Method(Att1 => { NetSavings => $value, ..., OnDemandCostEquivalent => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::SavingsPlansSavings object:

  $result = $service_obj->Method(...);
  $result->Att1->NetSavings

=head1 DESCRIPTION

The amount of savings you're accumulating, against the public On-Demand
rate of the usage accrued in an account.

=head1 ATTRIBUTES


=head2 NetSavings => Str

  The savings amount that you are accumulating for the usage that is
covered by a Savings Plans, when compared to the On-Demand equivalent
of the same usage.


=head2 OnDemandCostEquivalent => Str

  How much the amount that the usage would have cost if it was accrued at
the On-Demand rate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
