package = "kong-helloworld"
version = "1.0.1-0"
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

["kong.plugins.ip_restriction.handler"] = "kong/plugins/ip_restriction/handler.lua",

    ["kong.plugins.ip_restriction.init_worker"] = "kong/plugins/ip_restriction/init_worker.lua",

    ["kong.plugins.ip_restriction.access"] = "kong/plugins/ip_restriction/access.lua",

    ["kong.plugins.ip_restriction.schema"] = "kong/plugins/ip_restriction/schema.lua",



    ["kong.plugins.helloworld.handler"] = "kong/plugins/helloworld/handler.lua",


    ["kong.plugins.helloworld.schema"] = "kong/plugins/helloworld/schema.lua",
    ["kong.plugins.helloworld.daos"] = "kong/plugins/helloworld/daos.lua",
["kong.plugins.helloworld.policies.init"] = "kong/plugins/helloworld/policies/init.lua",
["kong.plugins.helloworld.policies.cluster"] = "kong/plugins/helloworld/policies/cluster.lua",
["kong.plugins.helloworld.migrations.postgres"] = "kong/plugins/helloworld/migrations/postgres.lua",
["kong.plugins.helloworld.migrations.cassandra"] = "kong/plugins/helloworld/migrations/cassandra.lua",


    ["kong.api.app"] = "kong/api/app.lua",

    ["kong.api.crud_helpers"] = "kong/api/crud_helpers.lua",

    ["kong.api.route_helpers"] = "kong/api/route_helpers.lua",


    }
}
