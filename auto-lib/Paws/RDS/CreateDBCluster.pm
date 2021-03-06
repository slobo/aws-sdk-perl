
package Paws::RDS::CreateDBCluster {
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CreateDBClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBClusterResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBCluster - Arguments for method CreateDBCluster on Paws::RDS

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBCluster on the 
Amazon Relational Database Service service. Use the attributes of this class
as arguments to method CreateDBCluster.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBCluster.

As an example:

  $service_obj->CreateDBCluster(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 AvailabilityZones => ArrayRef[Str]

  

A list of EC2 Availability Zones that instances in the DB cluster can
be created in. For information on regions and Availability Zones, see
Regions and Availability Zones.










=head2 BackupRetentionPeriod => Int

  

The number of days for which automated backups are retained. Setting
this parameter to a positive number enables backups. Setting this
parameter to 0 disables automated backups.

Default: 1

Constraints:

=over

=item * Must be a value from 0 to 35

=back










=head2 CharacterSetName => Str

  

A value that indicates that the DB cluster should be associated with
the specified CharacterSet.










=head2 DatabaseName => Str

  

The name for your database of up to 8 alpha-numeric characters. If you
do not provide a name, Amazon RDS will not create a database in the DB
cluster you are creating.










=head2 DBClusterIdentifier => Str

  

The DB cluster identifier. This parameter is stored as a lowercase
string.

Constraints:

=over

=item * Must contain from 1 to 63 alphanumeric characters or hyphens.

=item * First character must be a letter.

=item * Cannot end with a hyphen or contain two consecutive hyphens.

=back

Example: C<my-cluster1>










=head2 DBClusterParameterGroupName => Str

  

The name of the DB cluster parameter group to associate with this DB
cluster. If this argument is omitted, C<default.aurora5.6> for the
specified engine will be used.

Constraints:

=over

=item * Must be 1 to 255 alphanumeric characters

=item * First character must be a letter

=item * Cannot end with a hyphen or contain two consecutive hyphens

=back










=head2 DBSubnetGroupName => Str

  

A DB subnet group to associate with this DB cluster.










=head2 Engine => Str

  

The name of the database engine to be used for this DB cluster.

Valid Values: C<MySQL>










=head2 EngineVersion => Str

  

The version number of the database engine to use.

B<Aurora>

Example: C<5.6.0>










=head2 MasterUsername => Str

  

The name of the master user for the client DB cluster.

Constraints:

=over

=item * Must be 1 to 16 alphanumeric characters.

=item * First character must be a letter.

=item * Cannot be a reserved word for the chosen database engine.

=back










=head2 MasterUserPassword => Str

  

The password for the master database user. This password can contain
any printable ASCII character except "/", """, or "@".

Constraints: Must contain from 8 to 41 characters.










=head2 OptionGroupName => Str

  

A value that indicates that the DB cluster should be associated with
the specified option group.

Permanent options cannot be removed from an option group. The option
group cannot be removed from a DB cluster once it is associated with a
DB cluster.










=head2 Port => Int

  

The port number on which the instances in the DB cluster accept
connections.

Default: C<3306>










=head2 PreferredBackupWindow => Str

  

The daily time range during which automated backups are created if
automated backups are enabled using the C<BackupRetentionPeriod>
parameter.

Default: A 30-minute window selected at random from an 8-hour block of
time per region. To see the time blocks available, see Adjusting the
Preferred Maintenance Window in the I<Amazon RDS User Guide.>

Constraints:

=over

=item * Must be in the format C<hh24:mi-hh24:mi>.

=item * Times should be in Universal Coordinated Time (UTC).

=item * Must not conflict with the preferred maintenance window.

=item * Must be at least 30 minutes.

=back










=head2 PreferredMaintenanceWindow => Str

  

The weekly time range during which system maintenance can occur, in
Universal Coordinated Time (UTC).

Format: C<ddd:hh24:mi-ddd:hh24:mi>

Default: A 30-minute window selected at random from an 8-hour block of
time per region, occurring on a random day of the week. To see the time
blocks available, see Adjusting the Preferred Maintenance Window in the
I<Amazon RDS User Guide.>

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun

Constraints: Minimum 30-minute window.










=head2 Tags => ArrayRef[Paws::RDS::Tag]

  

=head2 VpcSecurityGroupIds => ArrayRef[Str]

  

A list of EC2 VPC security groups to associate with this DB cluster.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBCluster in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

