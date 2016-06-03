package WebService::Runkeeper::Types;

use Type::Library
  -base,
  -declare => qw( RestClient );
use Type::Utils -all;
use Types::Standard -types;

use REST::Client;

class_type RestClient, { class => "REST::Client" };

coerce RestClient,
  from Str,       via { "REST::Client"->new($_) },
  from ArrayRef,  via { "REST::Client"->new(@{$_}) };
