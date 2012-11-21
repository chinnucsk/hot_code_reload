-module(hcr_config).
-include("hcr.hrl").

-export([incr1/1]).

-export_type([type/0]).
-type type() :: 'test'.

-spec incr1(type() | model()) -> non_neg_integer().
incr1(test) -> 1;
incr1({model, Type, _}) -> incr1(Type).
