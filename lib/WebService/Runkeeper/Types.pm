package WebService::Runkeeper::Types;

use Type::Library
  -base,
  -declare => qw( JsonApi );
use Type::Utils -all;
use Types::Standard -types;

class_type JsonApi, { class => "JSON::API" };

coerce JsonApi,
  from Str,       via { "JSON::API"->new($_) },
  from ArrayRef,  via { "JSON::API"->new(@{$_}) };
