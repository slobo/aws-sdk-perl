
package Paws::ElastiCache::DescribeCacheSubnetGroups {
  use Moose;
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheSubnetGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::CacheSubnetGroupMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheSubnetGroupsResult');
}
1;