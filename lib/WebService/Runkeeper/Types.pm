package WebService::Runkeeper::Types;

use strict ;
use Type::Library
  -base,
  -declare => qw(
                 AcceptHeader
                 AcceptHeaderKey
                 AcceptHeaderValue
                 RestClient
  );
use Type::Utils -all;
use Types::Standard -types;

use REST::Client;

class_type RestClient, { class => "REST::Client" };

coerce RestClient,
  from Str,       via { "REST::Client"->new({host => $_}) },
  from HashRef,   via { "REST::Client"->new($_) };

declare AcceptHeaderKey,
  as StrMatch[ /^Accept:$/ ];

coerce AcceptHeaderKey,
  from Item, via { 'Accept:' };

declare AcceptHeaderValue,
  as Enum[
    qw(
      application/vnd.com.runkeeper.FitnessActivity+json
      application/vnd.com.runkeeper.StrengthTrainingActivity+json
      application/vnd.com.runkeeper.BackgroundActivitySet+json
      application/vnd.com.runkeeper.SleepSet+json
      application/vnd.com.runkeeper.NutritionSet+json
      application/vnd.com.runkeeper.WeightSet+json
      application/vnd.com.runkeeper.GeneralMeasurementSet+json
      application/vnd.com.runkeeper.DiabetesMeasurementSet+json
      application/vnd.com.runkeeper.Root+json
    )
  ];

declare AcceptHeader,
  as Tuple[AcceptHeaderKey, AcceptHeaderValue];

coerce AcceptHeader,
  from ArrayRef, via { @{$_} };
