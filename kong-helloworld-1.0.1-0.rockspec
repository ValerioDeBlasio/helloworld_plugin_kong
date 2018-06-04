package = "kong-helloworld"
version = "1.0.1-0"

source = {
   url = "git://github.com/ValerioDeBlasio/helloworld_plugin_kong" -- We don't have one yet
}
description = {
    summary = "Consumer Rate Limiting is a Kong plugin, which allows to define request limiting rules",
    detailed = [[
        Consumer Rate Limiting is a Kong plugin, which allows to define more configurable request limiting, than the built-in Rate Limiting plugin. Consumer Rate Limiting allows to define different limits for every consumer and API via Kong Admin API. Limits are reset every month.
	]],
    homepage = "https://github.com/nokia/consumer-rate-limiting",
    license = "BSD 3-Clause"
}
build = {
    type = "builtin",
    modules = {

["kong.plugins.ip_restriction.handler"] = "kong/plugins/ip-restriction/handler.lua",

    ["kong.plugins.ip_restriction.init_worker"] = "kong/plugins/ip-restriction/init_worker.lua",

    ["kong.plugins.ip_restriction.access"] = "kong/plugins/ip-restriction/access.lua",

    ["kong.plugins.ip_restriction.schema"] = "kong/plugins/ip-restriction/schema.lua",



    ["kong.plugins.helloworld.handler"] = "handler.lua",


    ["kong.plugins.helloworld.schema"] = "schema.lua",
    ["kong.plugins.helloworld.daos"] = "daos.lua",
["kong.plugins.helloworld.policies.init"] = "policies/init.lua",
["kong.plugins.helloworld.policies.cluster"] = "policies/cluster.lua",
["kong.plugins.helloworld.migrations.postgres"] = "migrations/postgres.lua",
["kong.plugins.helloworld.migrations.cassandra"] = "migrations/cassandra.lua",


    ["kong.api.crud_helpers"] = "kong/api/crud_helpers.lua",


    }
}
