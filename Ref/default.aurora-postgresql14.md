{
    "Parameters": [
        {
            "ParameterName": "ansi_constraint_trigger_ordering",
            "Description": "Change the firing order of constraint triggers to be compatible with the ANSI SQL standard.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "ansi_force_foreign_key_checks",
            "Description": "Ensure referential actions such as cascaded delete or cascaded update will always occur regardless of the various trigger contexts that exist for the action.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "ansi_qualified_update_set_target",
            "Description": "Support table and schema qualifiers in UPDATE ... SET statements.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "apg_ccm_enabled",
            "Description": "Enable or disable cluster cache management for the cluster.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "apg_enable_batch_mode_function_execution",
            "Description": "Enables batch-mode functions to process sets of rows at a time.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "apg_enable_correlated_any_transform",
            "Description": "Enables the planner to transform correlated ANY Sublink (IN/NOT IN subquery) to JOIN when possible.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "apg_enable_function_migration",
            "Description": "Enables the planner to migrate eligible scalar functions to the FROM clause.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "apg_enable_not_in_transform",
            "Description": "Enables the planner to transform NOT IN subquery to ANTI JOIN when possible.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "apg_enable_remove_redundant_inner_joins",
            "Description": "Enables the planner to remove redundant inner joins.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "apg_enable_semijoin_push_down",
            "Description": "Enables the use of semijoin filters for hash joins.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "apg_plan_mgmt.capture_plan_baselines",
            "ParameterValue": "off",
            "Description": "Capture plan baseline mode.  manual - enable plan capture for any SQL statement, off - disable plan capture, automatic - enable plan capture for for statements in pg_stat_statements that satisfy the eligibility criteria.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "list",
            "AllowedValues": "manual,automatic,off",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "apg_plan_mgmt.max_databases",
            "ParameterValue": "10",
            "Description": "Sets the maximum number of databases that that may manage queries using apg_plan_mgmt.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "10-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "apg_plan_mgmt.max_plans",
            "ParameterValue": "10000",
            "Description": "Sets the maximum number of plans that may be cached by apg_plan_mgmt.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "10-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "apg_plan_mgmt.plan_hash_version",
            "ParameterValue": "1",
            "Description": "Version of plan_hash computation being employed.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "1-2",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.7",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "apg_plan_mgmt.plan_retention_period",
            "ParameterValue": "32",
            "Description": "Maximum number of days since a plan was last_used before a plan will be automatically deleted.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "1-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "apg_plan_mgmt.unapproved_plan_execution_threshold",
            "ParameterValue": "0",
            "Description": "Estimated total plan cost below which an Unapproved plan will be executed.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "apg_plan_mgmt.use_plan_baselines",
            "ParameterValue": "false",
            "Description": "Use only approved or fixed plans for managed statements.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "list",
            "AllowedValues": "true,false",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "apg_write_forward.connect_timeout",
            "ParameterValue": "30",
            "Description": "The max time to wait for establishing write forwarding connections to the primary before giving up",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "1-2147483647",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.7",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "apg_write_forward.consistency_mode",
            "ParameterValue": "off",
            "Description": "Control the degree of read consistency on a forwarding reader instance when using global write forwarding. Set apg_write_forward.consistency_mode to one of the allowed values to use write forwarding. For the definition of each allowed value, see the documentation on using write forwarding in an Amazon Aurora PostgreSQL DB cluster.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "list",
            "AllowedValues": "off,eventual,session,global",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.7",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "apg_write_forward.idle_in_transaction_session_timeout",
            "ParameterValue": "0",
            "Description": "Sets the maximum allowed idle time between forwarded queries, when in a transaction.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "1-2147483647",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.7",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "apg_write_forward.idle_session_timeout",
            "ParameterValue": "300000",
            "Description": "Sets the maximum allowed idle time between forwarded queries, when not in a transaction.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "1-2147483647",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.7",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "apg_write_forward.max_forwarding_connections_percent",
            "ParameterValue": "25",
            "Description": "The percentage of max_connections that can be used for connections forwarded from Replicas",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "1-100",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.7",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "application_name",
            "Description": "Sets the application name to be reported in statistics and logs.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "array_nulls",
            "Description": "Enable input of NULL elements in arrays.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "authentication_timeout",
            "Description": "(s) Sets the maximum allowed time to complete client authentication.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "1-600",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "auto_explain.log_analyze",
            "Description": "Use EXPLAIN ANALYZE for plan logging.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "auto_explain.log_buffers",
            "Description": "Log buffers usage.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "auto_explain.log_format",
            "Description": "EXPLAIN format to be used for plan logging.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "text,xml,json,yaml",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "auto_explain.log_min_duration",
            "Description": "Sets the minimum execution time above which plans will be logged.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "-1-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "auto_explain.log_nested_statements",
            "Description": "Log nested statements.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "auto_explain.log_timing",
            "Description": "Collect timing data, not just row counts.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "auto_explain.log_triggers",
            "Description": "Include trigger statistics in plans.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "auto_explain.log_verbose",
            "Description": "Use EXPLAIN VERBOSE for plan logging.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "auto_explain.sample_rate",
            "Description": "Fraction of queries to process.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "autovacuum",
            "Description": "Starts the autovacuum subprocess.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "autovacuum_analyze_scale_factor",
            "ParameterValue": "0.05",
            "Description": "Number of tuple inserts, updates or deletes prior to analyze as a fraction of reltuples.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-100",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "autovacuum_analyze_threshold",
            "Description": "Minimum number of tuple inserts, updates or deletes prior to analyze.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "autovacuum_freeze_max_age",
            "Description": "Age at which to autovacuum a table to prevent transaction ID wraparound.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "100000000-750000000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "autovacuum_max_workers",
            "ParameterValue": "GREATEST({DBInstanceClassMemory/64371566592},3)",
            "Description": "Sets the maximum number of simultaneously running autovacuum worker processes.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "1-262143",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "autovacuum_multixact_freeze_max_age",
            "Description": "Multixact age at which to autovacuum a table to prevent multixact wraparound.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "10000000-2000000000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "autovacuum_naptime",
            "ParameterValue": "5",
            "Description": "(s) Time to sleep between autovacuum runs.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "1-2147483",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "autovacuum_vacuum_cost_delay",
            "ParameterValue": "5",
            "Description": "(ms) Vacuum cost delay in milliseconds, for autovacuum.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "-1-100",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "autovacuum_vacuum_cost_limit",
            "ParameterValue": "GREATEST({log(DBInstanceClassMemory/21474836480)*600},200)",
            "Description": "Vacuum cost amount available before napping, for autovacuum.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "-1-10000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "autovacuum_vacuum_insert_scale_factor",
            "ParameterValue": "0.2",
            "Description": "Number of tuple inserts prior to vacuum as a fraction of reltuples.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-100",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "autovacuum_vacuum_insert_threshold",
            "Description": "Minimum number of tuple inserts prior to vacuum, or -1 to disable insert vacuums.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "-1-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "autovacuum_vacuum_scale_factor",
            "ParameterValue": "0.1",
            "Description": "Number of tuple updates or deletes prior to vacuum as a fraction of reltuples.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-100",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "autovacuum_vacuum_threshold",
            "Description": "Minimum number of tuple updates or deletes prior to vacuum.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "autovacuum_work_mem",
            "ParameterValue": "GREATEST({DBInstanceClassMemory/32768},131072)",
            "Description": "(kB) Sets the maximum memory to be used by each autovacuum worker process.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "-1-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "babelfishpg_tds.default_server_name",
            "ParameterValue": "Microsoft SQL Server",
            "Description": "Default Babelfish server name",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "babelfishpg_tds.listen_addresses",
            "ParameterValue": "*",
            "Description": "Sets the host name or IP address(es) to listen TDS to.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "string",
            "IsModifiable": false,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "babelfishpg_tds.port",
            "ParameterValue": "1433",
            "Description": "Sets the TDS TCP port the server listens on.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "1-65535",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "babelfishpg_tds.product_version",
            "ParameterValue": "default",
            "Description": "User-settable SQL Server version number",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.7",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "babelfishpg_tds.tds_debug_log_level",
            "ParameterValue": "1",
            "Description": "Sets logging level in TDS, 0 disables logging",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-3",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "babelfishpg_tds.tds_default_numeric_precision",
            "ParameterValue": "38",
            "Description": "Sets the default precision of numeric type to be sent in the TDS column metadata if the engine does not specify one.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "1-38",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "babelfishpg_tds.tds_default_numeric_scale",
            "ParameterValue": "8",
            "Description": "Sets the default scale of numeric type to be sent in the TDS column metadata if the engine does not specify one.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-38",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "babelfishpg_tds.tds_default_packet_size",
            "ParameterValue": "4096",
            "Description": "Sets the default packet size for all the SQL Server clients being connected",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "512-32767",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "babelfishpg_tds.tds_default_protocol_version",
            "ParameterValue": "DEFAULT",
            "Description": "Sets a default TDS protocol version for all the clients being connected",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "TDSv7.0, TDSv7.1, TDSv7.1.1, TDSv7.2, TDSv7.3A, TDSv7.3B, TDSv7.4, DEFAULT",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "babelfishpg_tds.tds_ssl_encrypt",
            "ParameterValue": "0",
            "Description": "Sets the SSL Encryption option",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "babelfishpg_tds.tds_ssl_max_protocol_version",
            "ParameterValue": "TLSv1.2",
            "Description": "Sets the maximum SSL/TLS protocol version to use for tds session.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "TLSv1,TLSv1.1,TLSv1.2",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "babelfishpg_tds.tds_ssl_min_protocol_version",
            "ParameterValue": "TLSv1",
            "Description": "Sets the minimum SSL/TLS protocol version to use for tds session.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "TLSv1,TLSv1.1,TLSv1.2",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "babelfishpg_tsql.default_locale",
            "ParameterValue": "en-US",
            "Description": "Default locale to be used for collations created by CREATE COLLATION.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "string",
            "AllowedValues": "af-ZA,sq-AL,ar-DZ,ar-BH,ar-EG,ar-IQ,ar-JO,ar-KW,ar-LB,ar-LY,ar-MA,ar-OM,ar-QA,ar-SA,ar-SY,ar-TN,ar-AE,ar-YE,hy-AM,az-Cyrl-AZ,az-Latn-AZ,eu-ES,be-BY,bg-BG,ca-ES,zh-HK,zh-MO,zh-CN,zh-SG,zh-TW,hr-HR,cs-CZ,da-DK,nl-BE,nl-NL,en-AU,en-BZ,en-CA,en-IE,en-JM,en-NZ,en-PH,en-ZA,en-TT,en-GB,en-US,en-ZW,et-EE,fo-FO,fa-IR,fi-FI,fr-BE,fr-CA,fr-FR,fr-LU,fr-MC,fr-CH,mk-MK,ka-GE,de-AT,de-DE,de-LI,de-LU,de-CH,el-GR,gu-IN,he-IL,hi-IN,hu-HU,is-IS,id-ID,it-IT,it-CH,ja-JP,kn-IN,kok-IN,ko-KR,ky-KG,lv-LV,lt-LT,ms-BN,ms-MY,mr-IN,mn-MN,nb-NO,nn-NO,pl-PL,pt-BR,pt-PT,pa-IN,ro-RO,ru-RU,sa-IN,sr-Cyrl-RS,sr-Latn-RS,sk-SK,sl-SI,es-AR,es-BO,es-CL,es-CO,es-CR,es-DO,es-EC,es-SV,es-GT,es-HN,es-MX,es-NI,es-PA,es-PY,es-PE,es-PR,es-ES,es-TRADITIONAL,es-UY,es-VE,sw-KE,sv-FI,sv-SE,tt-RU,te-IN,th-TH,tr-TR,uk-UA,ur-IN,ur-PK,uz-Cyrl-UZ,uz-Latn-UZ,vi-VN",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "babelfishpg_tsql.migration_mode",
            "ParameterValue": "single-db",
            "Description": "Defines if multiple user databases are supported",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "list",
            "AllowedValues": "single-db,multi-db,null",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "babelfishpg_tsql.server_collation_name",
            "ParameterValue": "sql_latin1_general_cp1_ci_as",
            "Description": "Name of the default server collation",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "string",
            "AllowedValues": "arabic_ci_as,  bbf_unicode_general_ci_as,  bbf_unicode_cp1_ci_as,  bbf_unicode_cp1250_ci_as,  bbf_unicode_cp1251_ci_as,  bbf_unicode_cp1253_ci_as,  bbf_unicode_cp1254_ci_as,  bbf_unicode_cp1255_ci_as,  bbf_unicode_cp1256_ci_as,  bbf_unicode_cp1257_ci_as,  bbf_unicode_cp1258_ci_as,  bbf_unicode_cp874_ci_as,  chinese_prc_ci_as,  cyrillic_general_ci_as,  estonian_ci_as,  finnish_swedish_ci_as,  french_ci_as,  greek_ci_as,  hebrew_ci_as,  japanese_ci_as, korean_wansung_ci_as,  latin1_general_ci_as,  modern_spanish_ci_as,  mongolian_ci_as,  polish_ci_as,  sql_latin1_general_cp1250_ci_as,  sql_latin1_general_cp1251_ci_as,  sql_latin1_general_cp1253_ci_as,  sql_latin1_general_cp1254_ci_as,  sql_latin1_general_cp1255_ci_as,  sql_latin1_general_cp1256_ci_as,  sql_latin1_general_cp1257_ci_as,  sql_latin1_general_cp1258_ci_as,  sql_latin1_general_cp1_ci_as,  sql_latin1_general_cp874_ci_as,  thai_ci_as,  traditional_spanish_ci_as,  turkish_ci_as,  ukrainian_ci_as,  vietnamese_ci_as",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "babelfishpg_tsql.version",
            "ParameterValue": "default",
            "Description": "Sets the output of @@VERSION variable",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "backend_flush_after",
            "Description": "(8Kb) Number of pages after which previously performed writes are flushed to disk.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-256",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "backslash_quote",
            "Description": "Sets whether \\ is allowed in string literals.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "safe_encoding,on,off",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "backtrace_functions",
            "Description": "Log backtrace for errors in these functions.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "bytea_output",
            "Description": "Sets the output format for bytea.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "escape,hex",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "check_function_bodies",
            "Description": "Check function bodies during CREATE FUNCTION.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "client_connection_check_interval",
            "Description": "Sets the time interval between checks for disconnection while running queries.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "client_encoding",
            "ParameterValue": "UTF8",
            "Description": "Sets the clients character set encoding.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "client_min_messages",
            "Description": "Sets the message levels that are sent to the client.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "debug5,debug4,debug3,debug2,debug1,log,notice,warning,error",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "compute_query_id",
            "ParameterValue": "auto",
            "Description": "Compute query identifiers.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "auto,on",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "config_file",
            "ParameterValue": "/rdsdbdata/config/postgresql.conf",
            "Description": "Sets the servers main configuration file.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "string",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "constraint_exclusion",
            "Description": "Enables the planner to use constraints to optimize queries.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "partition,on,off",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "cpu_index_tuple_cost",
            "Description": "Sets the planners estimate of the cost of processing each index entry during an index scan.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1.79769e+308",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "cpu_operator_cost",
            "Description": "Sets the planners estimate of the cost of processing each operator or function call.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1.79769e+308",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "cpu_tuple_cost",
            "Description": "Sets the planners estimate of the cost of processing each tuple (row).",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1.79769e+308",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "cron.database_name",
            "ParameterValue": "postgres",
            "Description": "Sets the database to store pg_cron metadata tables",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "string",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "cron.log_min_messages",
            "ParameterValue": "fatal",
            "Description": "log_min_messages for the launcher bgworker",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "debug5,debug4,debug3,debug2,debug1,info,notice,warning,error,log,fatal,panic",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "cron.log_run",
            "ParameterValue": "on",
            "Description": "Log all jobs runs into the job_run_details table",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "string",
            "AllowedValues": "on,off",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "cron.log_statement",
            "ParameterValue": "off",
            "Description": "Log all cron statements prior to execution.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "string",
            "AllowedValues": "on,off",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "cron.max_running_jobs",
            "ParameterValue": "5",
            "Description": "Maximum number of jobs that can run concurrently.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "0-100",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "cron.use_background_workers",
            "ParameterValue": "on",
            "Description": "Enables background workers for pg_cron",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "string",
            "IsModifiable": false,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "cursor_tuple_fraction",
            "Description": "Sets the planners estimate of the fraction of a cursors rows that will be retrieved.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "data_directory",
            "ParameterValue": "/rdsdbdata/db",
            "Description": "Sets the servers data directory.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "string",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "datestyle",
            "Description": "Sets the display format for date and time values.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "db_user_namespace",
            "Description": "Enables per-database user names.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "deadlock_timeout",
            "Description": "(ms) Sets the time to wait on a lock before checking for deadlock.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "1-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "debug_pretty_print",
            "Description": "Indents parse and plan tree displays.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "debug_print_parse",
            "Description": "Logs each querys parse tree.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "debug_print_plan",
            "Description": "Logs each querys execution plan.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "debug_print_rewritten",
            "Description": "Logs each querys rewritten parse tree.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "default_statistics_target",
            "Description": "Sets the default statistics target.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "1-10000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "default_tablespace",
            "Description": "Sets the default tablespace to create tables and indexes in.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "default_toast_compression",
            "Description": "Sets the default compression method for compressible values.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "pglz,lz4",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "default_transaction_deferrable",
            "Description": "Sets the default deferrable status of new transactions.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "default_transaction_isolation",
            "Description": "Sets the transaction isolation level of each new transaction.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "serializable,repeatable read,read committed,read uncommitted",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "default_transaction_read_only",
            "Description": "Sets the default read-only status of new transactions.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "effective_cache_size",
            "ParameterValue": "SUM({DBInstanceClassMemory/12038},-50003)",
            "Description": "(8kB) Sets the planners assumption about the size of the disk cache.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "1-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "effective_io_concurrency",
            "Description": "Number of simultaneous requests that can be handled efficiently by the disk subsystem.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-256",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_async_append",
            "Description": "Enables the planners use of async append plans.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_bitmapscan",
            "Description": "Enables the planners use of bitmap-scan plans.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_gathermerge",
            "Description": "Enables the planners use of gather merge plans.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_hashagg",
            "Description": "Enables the planners use of hashed aggregation plans.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_hashjoin",
            "Description": "Enables the planners use of hash join plans.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_incremental_sort",
            "Description": "Enables the planners use of incremental sort steps.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_indexonlyscan",
            "Description": "Enables the planners use of index-only-scan plans.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_indexscan",
            "Description": "Enables the planners use of index-scan plans.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_material",
            "Description": "Enables the planners use of materialization.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_memoize",
            "Description": "Enables the planners use of memoization",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_mergejoin",
            "Description": "Enables the planners use of merge join plans.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_nestloop",
            "Description": "Enables the planners use of nested-loop join plans.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_parallel_append",
            "Description": "Enables the planners use of parallel append plans.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_parallel_hash",
            "Description": "Enables the planners user of parallel hash plans.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_partition_pruning",
            "Description": "Enable plan-time and run-time partition pruning.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_partitionwise_aggregate",
            "Description": "Enables partitionwise aggregation and grouping.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_partitionwise_join",
            "Description": "Enables partitionwise join.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_seqscan",
            "Description": "Enables the planners use of sequential-scan plans.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_sort",
            "Description": "Enables the planners use of explicit sort steps.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "enable_tidscan",
            "Description": "Enables the planners use of TID scan plans.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "escape_string_warning",
            "Description": "Warn about backslash escapes in ordinary string literals.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "exit_on_error",
            "Description": "Terminate session on any error.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "extra_float_digits",
            "Description": "Sets the number of digits displayed for floating-point values.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "-15-3",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "force_parallel_mode",
            "Description": "Forces use of parallel query facilities.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "from_collapse_limit",
            "Description": "Sets the FROM-list size beyond which subqueries are not collapsed.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "1-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "geqo",
            "Description": "Enables genetic query optimization.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "geqo_effort",
            "Description": "GEQO: effort is used to set the default for other GEQO parameters.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "1-10",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "geqo_generations",
            "Description": "GEQO: number of iterations of the algorithm.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "geqo_pool_size",
            "Description": "GEQO: number of individuals in the population.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "geqo_seed",
            "Description": "GEQO: seed for random path selection.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "geqo_selection_bias",
            "Description": "GEQO: selective pressure within the population.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "1.5-2",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "geqo_threshold",
            "Description": "Sets the threshold of FROM items beyond which GEQO is used.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "2-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "gin_fuzzy_search_limit",
            "Description": "Sets the maximum allowed result for exact search by GIN.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "gin_pending_list_limit",
            "Description": "(kB) Sets the maximum size of the pending list for GIN index.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "64-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "hash_mem_multiplier",
            "Description": "Multiple of work_mem to use for hash tables.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "1-1000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "hba_file",
            "ParameterValue": "/rdsdbdata/config/pg_hba.conf",
            "Description": "Sets the servers hba configuration file.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "string",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "hot_standby_feedback",
            "ParameterValue": "on",
            "Description": "Allows feedback from a hot standby to the primary that will avoid query conflicts.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "huge_pages",
            "ParameterValue": "on",
            "Description": "Use of huge pages on Linux.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "string",
            "AllowedValues": "on,off",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "ident_file",
            "ParameterValue": "/rdsdbdata/config/pg_ident.conf",
            "Description": "Sets the servers ident configuration file.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "string",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "idle_in_transaction_session_timeout",
            "ParameterValue": "86400000",
            "Description": "(ms) Sets the maximum allowed duration of any idling transaction.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "idle_session_timeout",
            "Description": "Terminate any session that has been idle (that is, waiting for a client query), but not within an open transaction, for longer than the specified amount of time",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "intervalstyle",
            "Description": "Sets the display format for interval values.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "postgres,postgres_verbose,sql_standard,iso_8601",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "join_collapse_limit",
            "Description": "Sets the FROM-list size beyond which JOIN constructs are not flattened.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "1-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "krb_caseins_users",
            "ParameterValue": "false",
            "Description": "Sets whether GSSAPI user names should be treated case-insensitively.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "true,false",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "lc_messages",
            "Description": "Sets the language in which messages are displayed.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "lc_monetary",
            "Description": "Sets the locale for formatting monetary amounts.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "lc_numeric",
            "Description": "Sets the locale for formatting numbers.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "lc_time",
            "Description": "Sets the locale for formatting date and time values.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "listen_addresses",
            "ParameterValue": "*",
            "Description": "Sets the host name or IP address(es) to listen to.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "string",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "lo_compat_privileges",
            "ParameterValue": "0",
            "Description": "Enables backward compatibility mode for privilege checks on large objects.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_autovacuum_min_duration",
            "ParameterValue": "10000",
            "Description": "(ms) Sets the minimum execution time above which autovacuum actions will be logged.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "-1-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_connections",
            "Description": "Logs each successful connection.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_destination",
            "ParameterValue": "stderr",
            "Description": "Sets the destination for server log output.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "stderr,csvlog",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_directory",
            "ParameterValue": "/rdsdbdata/log/error",
            "Description": "Sets the destination directory for log files.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_disconnections",
            "Description": "Logs end of a session, including duration.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_duration",
            "Description": "Logs the duration of each completed SQL statement.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_error_verbosity",
            "Description": "Sets the verbosity of logged messages.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "terse,default,verbose",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_executor_stats",
            "Description": "Writes executor performance statistics to the server log.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_file_mode",
            "ParameterValue": "0644",
            "Description": "Sets the file permissions for log files.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_filename",
            "ParameterValue": "postgresql.log.%Y-%m-%d-%H%M",
            "Description": "Sets the file name pattern for log files.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "postgresql.log.%Y-%m-%d,postgresql.log.%Y-%m-%d-%H,postgresql.log.%Y-%m-%d-%H%M",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "logging_collector",
            "ParameterValue": "1",
            "Description": "Start a subprocess to capture stderr output and/or csvlogs into log files.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_hostname",
            "ParameterValue": "0",
            "Description": "Logs the host name in the connection logs.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "logical_decoding_work_mem",
            "Description": "(kB) This much memory can be used by each internal reorder buffer before spilling to disk.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "64-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_line_prefix",
            "ParameterValue": "%t:%r:%u@%d:[%p]:",
            "Description": "Controls information prefixed to each log line.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_lock_waits",
            "Description": "Logs long lock waits.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_min_duration_sample",
            "Description": "(ms) Sets the minimum execution time above which a sample of statements will be logged. Sampling is determined by log_statement_sample_rate.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "-1-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_min_duration_statement",
            "Description": "(ms) Sets the minimum execution time above which statements will be logged.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "-1-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_min_error_statement",
            "Description": "Causes all statements generating error at or above this level to be logged.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "debug5,debug4,debug3,debug2,debug1,info,notice,warning,error,log,fatal,panic",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_min_messages",
            "Description": "Sets the message levels that are logged.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "debug5,debug4,debug3,debug2,debug1,info,notice,warning,error,log,fatal",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_parameter_max_length",
            "Description": "(B) When logging statements, limit logged parameter values to first N bytes.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "-1-1073741823",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_parameter_max_length_on_error",
            "Description": "(B) When reporting an error, limit logged parameter values to first N bytes.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "-1-1073741823",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_parser_stats",
            "Description": "Writes parser performance statistics to the server log.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_planner_stats",
            "Description": "Writes planner performance statistics to the server log.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_replication_commands",
            "Description": "Logs each replication command.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_rotation_age",
            "ParameterValue": "60",
            "Description": "(min) Automatic log file rotation will occur after N minutes.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "10-1440",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_rotation_size",
            "ParameterValue": "100000",
            "Description": "(kB) Automatic log file rotation will occur after N kilobytes.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "50000-1000000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_statement",
            "Description": "Sets the type of statements logged.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "none,ddl,mod,all",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_statement_sample_rate",
            "Description": "Fraction of statements exceeding log_min_duration_sample to be logged.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_statement_stats",
            "Description": "Writes cumulative performance statistics to the server log.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_temp_files",
            "Description": "(kB) Log the use of temporary files larger than this number of kilobytes.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "-1-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_timezone",
            "ParameterValue": "UTC",
            "Description": "Sets the time zone to use in log messages.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_transaction_sample_rate",
            "Description": "Set the fraction of transactions to log for new transactions.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0.0-1.0",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "log_truncate_on_rotation",
            "ParameterValue": "0",
            "Description": "Truncate existing log files of same name during log rotation.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "maintenance_io_concurrency",
            "ParameterValue": "1",
            "Description": "A variant of effective_io_concurrency that is used for maintenance work.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-256",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "maintenance_work_mem",
            "ParameterValue": "GREATEST({DBInstanceClassMemory/63963136*1024},65536)",
            "Description": "(kB) Sets the maximum memory to be used for maintenance operations.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "1024-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "max_connections",
            "ParameterValue": "LEAST({DBInstanceClassMemory/9531392},5000)",
            "Description": "Sets the maximum number of concurrent connections.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "6-262143",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "max_files_per_process",
            "Description": "Sets the maximum number of simultaneously open files for each server process.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "74-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "max_locks_per_transaction",
            "ParameterValue": "64",
            "Description": "Sets the maximum number of locks per transaction.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "10-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "max_logical_replication_workers",
            "Description": "Maximum number of logical replication worker processes.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "0-262143",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "max_parallel_maintenance_workers",
            "Description": "Sets the maximum number of parallel processes per maintenance operation.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-1024",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "max_parallel_workers",
            "ParameterValue": "GREATEST(${DBInstanceVCPU/2},8)",
            "Description": "Sets the maximum number of parallel workers than can be active at one time.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-1024",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "max_parallel_workers_per_gather",
            "Description": "Sets the maximum number of parallel processes per executor node.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-1024",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "max_pred_locks_per_page",
            "Description": "Sets the maximum number of predicate-locked tuples per page.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "max_pred_locks_per_relation",
            "Description": "Sets the maximum number of predicate-locked pages and tuples per relation.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "-2147483648-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "max_pred_locks_per_transaction",
            "Description": "Sets the maximum number of predicate locks per transaction.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "10-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "max_prepared_transactions",
            "ParameterValue": "0",
            "Description": "Sets the maximum number of simultaneously prepared transactions.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "0-262143",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "max_replication_slots",
            "ParameterValue": "20",
            "Description": "Sets the maximum number of replication slots that the server can support.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "5-262143",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "max_slot_wal_keep_size",
            "Description": "(MB) Replication slots will be marked as failed, and segments released for deletion or recycling, if this much space is occupied by WAL on disk.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "-1-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "max_stack_depth",
            "ParameterValue": "6144",
            "Description": "(kB) Sets the maximum stack depth, in kilobytes.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "100-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "max_standby_streaming_delay",
            "ParameterValue": "14000",
            "Description": "(ms) Sets the maximum delay before canceling queries when a hot standby server is processing streamed WAL data.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "1000-30000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "max_sync_workers_per_subscription",
            "ParameterValue": "2",
            "Description": "Maximum number of synchronization workers per subscription",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-262143",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "max_wal_senders",
            "ParameterValue": "10",
            "Description": "Sets the maximum number of simultaneously running WAL sender processes.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "5-262143",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "max_worker_processes",
            "ParameterValue": "GREATEST(${DBInstanceVCPU*2},8)",
            "Description": "Sets the maximum number of concurrent worker processes.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "0-262143",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "min_dynamic_shared_memory",
            "Description": "(MB) Amount of dynamic shared memory reserved at startup.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "0-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "min_parallel_index_scan_size",
            "Description": "(8kB) Sets the minimum amount of index data for a parallel scan.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-715827882",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "min_parallel_table_scan_size",
            "Description": "(8kB) Sets the minimum amount of table data for a parallel scan.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-715827882",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "multixact_members_cache_size",
            "Description": "Sets the number of SLRU cache entries used by multixact members.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "16-65536",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "multixact_offsets_cache_size",
            "Description": "Sets the number of SLRU cache entries used by multixact offsets.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "8-65536",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "old_snapshot_threshold",
            "Description": "(min) Time before a snapshot is too old to read pages changed after the snapshot was taken.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "-1-86400",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "orafce.nls_date_format",
            "Description": "Emulate oracles date output behaviour.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "orafce.timezone",
            "Description": "Specify timezone used for sysdate function.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "parallel_leader_participation",
            "Description": "Controls whether Gather and Gather Merge also run subplans.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "parallel_setup_cost",
            "Description": "Sets the planners estimate of the cost of starting up worker processes for parallel query.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1.79769e+308",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "parallel_tuple_cost",
            "Description": "Sets the planners estimate of the cost of passing each tuple (row) from worker to master backend.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1.79769e+308",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "password_encryption",
            "Description": "Encrypt passwords.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "md5,scram-sha-256",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pgaudit.log",
            "Description": "Specifies which classes of statements will be logged by session audit logging.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "list",
            "AllowedValues": "ddl,function,misc,read,role,write,none,all,-ddl,-function,-misc,-read,-role,-write",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pgaudit.log_catalog",
            "Description": "Specifies that session logging should be enabled in the case where all relations in a statement are in pg_catalog.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pgaudit.log_level",
            "Description": "Specifies the log level that will be used for log entries.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "debug5,debug4,debug3,debug2,debug1,info,notice,warning,log",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pgaudit.log_parameter",
            "Description": "Specifies that audit logging should include the parameters that were passed with the statement.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pgaudit.log_relation",
            "Description": "Specifies whether session audit logging should create a separate log entry for each relation (TABLE, VIEW, etc.) referenced in a SELECT or DML statement.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pgaudit.log_statement_once",
            "Description": "Specifies whether logging will include the statement text and parameters with the first log entry for a statement/substatement combination or with every entry.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pgaudit.role",
            "Description": "Specifies the master role to use for object audit logging.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "rds_pgaudit",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_bigm.enable_recheck",
            "ParameterValue": "on",
            "Description": "It specifies whether to perform Recheck which is an internal process of full text search.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "on,off",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_bigm.gin_key_limit",
            "ParameterValue": "0",
            "Description": "It specifies the maximum number of 2-grams of the search keyword to be used for full text search.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_bigm.similarity_limit",
            "ParameterValue": "0.3",
            "Description": "It specifies the minimum threshold used by the similarity search.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_hint_plan.debug_print",
            "Description": "Logs results of hint parsing.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "off,on,detailed,verbose",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_hint_plan.enable_hint",
            "Description": "Force planner to use plans specified in the hint comment preceding to the query.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_hint_plan.enable_hint_table",
            "Description": "Force planner to not get hint by using table lookups.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_hint_plan.message_level",
            "Description": "Message level of debug messages.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "debug5,debug4,debug3,debug2,debug1,log,info,notice,warning,error",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_hint_plan.parse_messages",
            "Description": "Message level of parse errors.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "debug5,debug4,debug3,debug2,debug1,log,info,notice,warning,error",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pglogical.batch_inserts",
            "Description": "Batch inserts if possible",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pglogical.conflict_log_level",
            "Description": "Sets log level used for logging resolved conflicts.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "debug5,debug4,debug3,debug2,debug1,info,notice,warning,error,log,fatal,panic",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pglogical.conflict_resolution",
            "Description": "Sets method used for conflict resolution for resolvable conflicts.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "error,apply_remote,keep_local,last_update_wins,first_update_wins",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pglogical.extra_connection_options",
            "Description": "connection options to add to all peer node connections",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pglogical.synchronous_commit",
            "Description": "pglogical specific synchronous commit value",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pglogical.use_spi",
            "Description": "Use SPI instead of low-level API for applying changes",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_prewarm.autoprewarm",
            "Description": "Starts the autoprewarm worker.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_prewarm.autoprewarm_interval",
            "Description": "Sets the interval between dumps of shared buffers",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-2147483",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.block_is_normalized",
            "Description": "Sets if the result value is normalized or not.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.block_threshold",
            "Description": "Sets the threshold used by the Block similarity function.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.block_tokenizer",
            "Description": "Sets the tokenizer for Block similarity function.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "alnum,gram,word,camelcase",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.cosine_is_normalized",
            "Description": "Sets if the result value is normalized or not.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.cosine_threshold",
            "Description": "Sets the threshold used by the Cosine similarity function.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.cosine_tokenizer",
            "Description": "Sets the tokenizer for Cosine similarity function.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "alnum,gram,word,camelcase",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.dice_is_normalized",
            "Description": "Sets if the result value is normalized or not.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.dice_threshold",
            "Description": "Sets the threshold used by the Dice similarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.dice_tokenizer",
            "Description": "Sets the tokenizer for Dice similarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "alnum,gram,word,camelcase",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.euclidean_is_normalized",
            "Description": "Sets if the result value is normalized or not.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.euclidean_threshold",
            "Description": "Sets the threshold used by the Euclidean similarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.euclidean_tokenizer",
            "Description": "Sets the tokenizer for Euclidean similarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "alnum,gram,word,camelcase",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.hamming_is_normalized",
            "Description": "Sets if the result value is normalized or not.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.hamming_threshold",
            "Description": "Sets the threshold used by the Block similarity metric.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.jaccard_is_normalized",
            "Description": "Sets if the result value is normalized or not.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.jaccard_threshold",
            "Description": "Sets the threshold used by the Jaccard similarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.jaccard_tokenizer",
            "Description": "Sets the tokenizer for Jaccard similarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "alnum,gram,word,camelcase",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.jaro_is_normalized",
            "Description": "Sets if the result value is normalized or not.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.jaro_threshold",
            "Description": "Sets the threshold used by the Jaro similarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.jarowinkler_is_normalized",
            "Description": "Sets if the result value is normalized or not.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.jarowinkler_threshold",
            "Description": "Sets the threshold used by the Jarowinkler similarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.levenshtein_is_normalized",
            "Description": "Sets if the result value is normalized or not.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.levenshtein_threshold",
            "Description": "Sets the threshold used by the Levenshtein similarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.matching_is_normalized",
            "Description": "Sets if the result value is normalized or not.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.matching_threshold",
            "Description": "Sets the threshold used by the Matching Coefficient similarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.matching_tokenizer",
            "Description": "Sets the tokenizer for Matching Coefficient similarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "alnum,gram,word,camelcase",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.mongeelkan_is_normalized",
            "Description": "Sets if the result value is normalized or not.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.mongeelkan_threshold",
            "Description": "Sets the threshold used by the Monge-Elkan similarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.mongeelkan_tokenizer",
            "Description": "Sets the tokenizer for Monge-Elkan similarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "alnum,gram,word,camelcase",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.nw_gap_penalty",
            "Description": "Sets the gap penalty used by the Needleman-Wunsch similarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "-9223370000000000000-9223370000000000000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.nw_is_normalized",
            "Description": "Sets if the result value is normalized or not.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.nw_threshold",
            "Description": "Sets the threshold used by the Needleman-Wunsch similarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.overlap_is_normalized",
            "Description": "Sets if the result value is normalized or not.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.overlap_threshold",
            "Description": "Sets the threshold used by the Overlap Coefficient similarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.overlap_tokenizer",
            "Description": "Sets the tokenizer for Overlap Coefficientsimilarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "alnum,gram,word,camelcase",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.qgram_is_normalized",
            "Description": "Sets if the result value is normalized or not.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.qgram_threshold",
            "Description": "Sets the threshold used by the Q-Gram similarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.qgram_tokenizer",
            "Description": "Sets the tokenizer for Q-Gram measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "alnum,gram,word,camelcase",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.swg_is_normalized",
            "Description": "Sets if the result value is normalized or not.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.swg_threshold",
            "Description": "Sets the threshold used by the Smith-Waterman-Gotoh similarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.sw_is_normalized",
            "Description": "Sets if the result value is normalized or not.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_similarity.sw_threshold",
            "Description": "Sets the threshold used by the Smith-Waterman similarity measure.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_stat_statements.max",
            "Description": "Sets the maximum number of statements tracked by pg_stat_statements.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "100-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_stat_statements.save",
            "Description": "Save pg_stat_statements statistics across server shutdowns.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_stat_statements.track",
            "Description": "Selects which statements are tracked by pg_stat_statements.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "NONE,TOP,ALL",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_stat_statements.track_planning",
            "Description": "Selects whether planning duration is tracked by pg_stat_statements.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pg_stat_statements.track_utility",
            "Description": "Selects whether utility commands are tracked by pg_stat_statements.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "pgtle.enable_password_check",
            "Description": "Sets the behavior for interacting with passcheck feature.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "on,off,require",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.5",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "plan_cache_mode",
            "Description": "Controls the planner selection of custom or generic plan.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "auto,force_generic_plan,force_custom_plan",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "port",
            "ParameterValue": "{EndPointPort}",
            "Description": "Sets the TCP port the server listens on.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "1-65535",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "postgis.gdal_enabled_drivers",
            "ParameterValue": "ENABLE_ALL",
            "Description": "Enable or disable GDAL drivers used with PostGIS in Postgres 9.3.5 and above.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "string",
            "AllowedValues": "ENABLE_ALL,DISABLE_ALL",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "quote_all_identifiers",
            "Description": "When generating SQL fragments, quote all identifiers.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "random_page_cost",
            "Description": "Sets the planners estimate of the cost of a nonsequentially fetched disk page.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1.79769e+308",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rdkit.dice_threshold",
            "Description": "Lower threshold of Dice similarity. Molecules with similarity lower than threshold are not similar by # operation.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rdkit.do_chiral_sss",
            "Description": "Should stereochemistry be taken into account in substructure matching. If false, no stereochemistry information is used in substructure matches.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rdkit.tanimoto_threshold",
            "Description": "Lower threshold of Tanimoto similarity. Molecules with similarity lower than threshold are not similar by % operation.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.accepted_password_auth_method",
            "ParameterValue": "md5+scram",
            "Description": "Force authentication for connections with password stored locally.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "md5+scram,scram",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.adaptive_autovacuum",
            "ParameterValue": "1",
            "Description": "RDS parameter to enable/disable adaptive autovacuum.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.allowed_extensions",
            "Description": "Comma-delimited list of extensions that may be installed.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.7",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.babelfish_status",
            "ParameterValue": "off",
            "Description": "RDS parameter to enable/disable Babelfish for Aurora PostgreSQL.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "string",
            "AllowedValues": "on,off,datatypesonly",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.3",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.enable_plan_management",
            "ParameterValue": "0",
            "Description": "Enable or disable the apg_plan_mgmt extension.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.extensions",
            "ParameterValue": "address_standardizer, address_standardizer_data_us, apg_plan_mgmt, aurora_stat_utils, amcheck, autoinc, aws_commons, aws_ml, aws_s3, aws_lambda, bool_plperl, bloom, btree_gin, btree_gist, citext, cube, dblink, dict_int, dict_xsyn, earthdistance, fuzzystrmatch, hll, hstore, hstore_plperl, insert_username, intagg, intarray, ip4r, isn, jsonb_plperl, lo, log_fdw, ltree, moddatetime, old_snapshot, oracle_fdw, orafce, pgaudit, pgcrypto, pglogical, pgrouting, pgrowlocks, pgstattuple, pgtap, pg_bigm, pg_buffercache, pg_cron, pg_freespacemap, pg_hint_plan, pg_partman, pg_prewarm, pg_proctab, pg_repack, pg_similarity, pg_stat_statements, pg_trgm, pg_visibility, pg_tle, plcoffee, plls, plperl, plpgsql, plprofiler, pltcl, plv8, postgis, postgis_tiger_geocoder, postgis_raster, postgis_topology, postgres_fdw, prefix, rdkit, rds_tools, refint, seg, sslinfo, tablefunc, tcn, tds_fdw, tsm_system_rows, tsm_system_time, unaccent, uuid-ossp",
            "Description": "List of extensions provided by RDS",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.force_admin_logging_level",
            "Description": "See log messages for RDS admin user actions in customer databases.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "disabled,debug5,debug4,debug3,debug2,debug1,info,notice,warning,error,log,fatal,panic",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.force_autovacuum_logging_level",
            "ParameterValue": "WARNING",
            "Description": "See log messages related to autovacuum operations.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "disabled,debug5,debug4,debug3,debug2,debug1,info,notice,warning,error,log,fatal,panic",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.force_ssl",
            "ParameterValue": "0",
            "Description": "Force SSL connections.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.global_db_rpo",
            "Description": "(s) Recovery point objective threshold, in seconds, that blocks user commits when it is violated.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "20-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.local_volume_spill_enabled",
            "ParameterValue": "on",
            "Description": "Enables writing logical spill files to the local volume",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "string",
            "AllowedValues": "on,off",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.7",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.logical_decoding_work_disk",
            "Description": "Sets the maximum disk space to be used for logical decoding",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "-1-2147483647",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.7",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.logically_replicate_unlogged_tables",
            "Description": "Include unlogged tables in logical replication stream",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.6",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.logical_replication",
            "ParameterValue": "0",
            "Description": "Enables logical decoding.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.logical_wal_cache",
            "Description": "(8kB) Sets the number of disk-page buffers in shared memory for logical PostgreSQL WAL.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "-1-262143",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.5",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.log_retention_period",
            "ParameterValue": "4320",
            "Description": "Amazon RDS will delete PostgreSQL log that are older than N minutes.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "1440-10080",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.memory_allocation_guard",
            "Description": "Protects allocation of a backend from getting denied by resource management.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "MinimumEngineVersion": "14.6",
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.pg_stat_ramdisk_size",
            "ParameterValue": "0",
            "Description": "Size of the stats ramdisk in MB. A nonzero value will setup the ramdisk.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "0-8196",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.rds_superuser_reserved_connections",
            "ParameterValue": "2",
            "Description": "Sets the number of connection slots reserved for rds_superusers.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "0-262143",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.restrict_password_commands",
            "Description": "restricts password-related commands to members of rds_password",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "rds.superuser_variables",
            "ParameterValue": "session_replication_role",
            "Description": "List of superuser-only variables for which we elevate rds_superuser modification statements.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "string",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "recovery_init_sync_method",
            "ParameterValue": "syncfs",
            "Description": "Sets the method for synchronizing the data directory before crash recovery.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "string",
            "AllowedValues": "fsync,syncfs",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "remove_temp_files_after_crash",
            "ParameterValue": "0",
            "Description": "Remove temporary files after backend crash.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "restart_after_crash",
            "Description": "Reinitialize server after backend crash.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "row_security",
            "Description": "Enable row security.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "search_path",
            "Description": "Sets the schema search order for names that are not schema-qualified.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "seq_page_cost",
            "Description": "Sets the planners estimate of the cost of a sequentially fetched disk page.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "float",
            "AllowedValues": "0-1.79769e+308",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "session_replication_role",
            "Description": "Sets the sessions behavior for triggers and rewrite rules.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "origin,replica,local",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "shared_buffers",
            "ParameterValue": "SUM({DBInstanceClassMemory/12038},-50003)",
            "Description": "(8kB) Sets the number of shared memory buffers used by the server.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "128-1073741823",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "shared_preload_libraries",
            "ParameterValue": "pg_stat_statements",
            "Description": "Lists shared libraries to preload into server.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "list",
            "AllowedValues": "auto_explain,orafce,pgaudit,pg_similarity,pg_stat_statements,pg_hint_plan,pg_prewarm,plprofiler,pglogical,pg_cron,pg_tle",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "ssl",
            "ParameterValue": "1",
            "Description": "Enables SSL connections.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "ssl_ca_file",
            "ParameterValue": "/rdsdbdata/rds-metadata/ca-cert.pem",
            "Description": "Location of the SSL server authority file.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "ssl_cert_file",
            "ParameterValue": "/rdsdbdata/rds-metadata/server-cert.pem",
            "Description": "Location of the SSL server certificate file.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "ssl_ciphers",
            "ParameterValue": "DHE-RSA-AES128-SHA, DHE-RSA-AES128-SHA256, DHE-RSA-AES128-GCM-SHA256, DHE-RSA-AES256-SHA, DHE-RSA-AES256-SHA256, DHE-RSA-AES256-GCM-SHA384, ECDHE-RSA-AES128-SHA, ECDHE-RSA-AES128-SHA256, ECDHE-RSA-AES128-GCM-SHA256, ECDHE-RSA-AES256-SHA, ECDHE-RSA-AES256-SHA384, ECDHE-RSA-AES256-GCM-SHA384, TLS_RSA_WITH_AES_256_GCM_SHA384, TLS_RSA_WITH_AES_256_CBC_SHA, TLS_RSA_WITH_AES_128_GCM_SHA256, TLS_RSA_WITH_AES_128_CBC_SHA256, TLS_RSA_WITH_AES_128_CBC_SHA, TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256, TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA",
            "Description": "Sets the list of allowed TLS ciphers to be used on secure connections.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "list",
            "AllowedValues": "DHE-RSA-AES128-SHA, DHE-RSA-AES128-SHA256, DHE-RSA-AES128-GCM-SHA256, DHE-RSA-AES256-SHA, DHE-RSA-AES256-SHA256, DHE-RSA-AES256-GCM-SHA384, ECDHE-RSA-AES128-SHA, ECDHE-RSA-AES128-SHA256, ECDHE-RSA-AES128-GCM-SHA256, ECDHE-RSA-AES256-SHA, ECDHE-RSA-AES256-SHA384, ECDHE-RSA-AES256-GCM-SHA384, TLS_RSA_WITH_AES_256_GCM_SHA384, TLS_RSA_WITH_AES_256_CBC_SHA, TLS_RSA_WITH_AES_128_GCM_SHA256, TLS_RSA_WITH_AES_128_CBC_SHA256, TLS_RSA_WITH_AES_128_CBC_SHA, TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256, TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "ssl_crl_dir",
            "ParameterValue": "/rdsdbdata/rds-metadata/ssl_crl_dir/",
            "Description": "Location of the SSL certificate revocation list directory.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "string",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "ssl_key_file",
            "ParameterValue": "/rdsdbdata/rds-metadata/server-key.pem",
            "Description": " Location of the SSL server private key file",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "ssl_max_protocol_version",
            "ParameterValue": "TLSv1.2",
            "Description": "Sets the maximum SSL/TLS protocol version allowed",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "TLSv1,TLSv1.1,TLSv1.2",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "ssl_min_protocol_version",
            "ParameterValue": "TLSv1.2",
            "Description": "Sets the minimum SSL/TLS protocol version allowed",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "TLSv1,TLSv1.1,TLSv1.2",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "standard_conforming_strings",
            "Description": "Causes ... strings to treat backslashes literally.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "statement_timeout",
            "Description": "(ms) Sets the maximum allowed duration of any statement.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "stats_temp_directory",
            "ParameterValue": "/rdsdbdata/db/pg_stat_tmp",
            "Description": "Writes temporary statistics files to the specified directory.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "superuser_reserved_connections",
            "ParameterValue": "3",
            "Description": "Sets the number of connection slots reserved for superusers.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "0-8388607",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "synchronize_seqscans",
            "Description": "Enable synchronized sequential scans.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "synchronous_commit",
            "ParameterValue": "on",
            "Description": "Sets the current transactions synchronization level.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "local,on,off",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "tcp_keepalives_count",
            "Description": "Maximum number of TCP keepalive retransmits.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "tcp_keepalives_idle",
            "Description": "(s) Time between issuing TCP keepalives.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "tcp_keepalives_interval",
            "Description": "(s) Time between TCP keepalive retransmits.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "temp_buffers",
            "Description": "(8kB) Sets the maximum number of temporary buffers used by each session.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "100-1073741823",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "temp_file_limit",
            "ParameterValue": "-1",
            "Description": "Constrains the total amount disk space in kilobytes that a given PostgreSQL process can use for temporary files, excluding space used for explicit temporary tables",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "-1-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "temp_tablespaces",
            "Description": "Sets the tablespace(s) to use for temporary tables and sort files.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "timezone",
            "ParameterValue": "UTC",
            "Description": "Sets the time zone for displaying and interpreting time stamps.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "string",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "track_activities",
            "Description": "Collects information about executing commands.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "track_activity_query_size",
            "ParameterValue": "4096",
            "Description": "Sets the size reserved for pg_stat_activity.current_query, in bytes.",
            "Source": "system",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "100-1048576",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "track_commit_timestamp",
            "Description": "Collects transaction commit time.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "track_counts",
            "Description": "Collects statistics on database activity.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "track_functions",
            "ParameterValue": "pl",
            "Description": "Collects function-level statistics on database activity.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "none,pl,all",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "track_io_timing",
            "ParameterValue": "1",
            "Description": "Collects timing statistics on database IO activity.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "track_wal_io_timing",
            "Description": "Collects timing statistics for WAL I/O activity.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "transform_null_equals",
            "Description": "Treats expr=NULL as expr IS NULL.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "update_process_title",
            "Description": "Updates the process title to show the active SQL command.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "vacuum_cost_delay",
            "Description": "(ms) Vacuum cost delay in milliseconds.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-100",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "vacuum_cost_limit",
            "Description": "Vacuum cost amount available before napping.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "1-10000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "vacuum_cost_page_dirty",
            "Description": "Vacuum cost for a page dirtied by vacuum.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-10000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "vacuum_cost_page_hit",
            "Description": "Vacuum cost for a page found in the buffer cache.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-10000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "vacuum_cost_page_miss",
            "ParameterValue": "0",
            "Description": "Vacuum cost for a page not found in the buffer cache.",
            "Source": "system",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-10000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "vacuum_defer_cleanup_age",
            "Description": "Number of transactions by which VACUUM and HOT cleanup should be deferred, if any.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-1000000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "vacuum_failsafe_age",
            "ParameterValue": "1200000000",
            "Description": "Age at which VACUUM should trigger failsafe to avoid a wraparound outage.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-1200000000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "vacuum_freeze_min_age",
            "Description": "Minimum age at which VACUUM should freeze a table row.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-1000000000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "vacuum_freeze_table_age",
            "Description": "Age at which VACUUM should scan whole table to freeze tuples.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-2000000000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "vacuum_multixact_failsafe_age",
            "ParameterValue": "1200000000",
            "Description": "Multixact age at which VACUUM should trigger failsafe to avoid a wraparound outage.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-1200000000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "vacuum_multixact_freeze_min_age",
            "Description": "Minimum age at which VACUUM should freeze a MultiXactId in a table row.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-1000000000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "vacuum_multixact_freeze_table_age",
            "Description": "Multixact age at which VACUUM should scan whole table to freeze tuples.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-2000000000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "wal_buffers",
            "Description": "(8kB) Sets the number of disk-page buffers in shared memory for WAL.",
            "Source": "engine-default",
            "ApplyType": "static",
            "DataType": "integer",
            "AllowedValues": "-1-262143",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "wal_receiver_create_temp_slot",
            "ParameterValue": "0",
            "Description": "Sets whether a WAL receiver should create a temporary replication slot if no permanent slot is configured.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "boolean",
            "AllowedValues": "0,1",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "wal_receiver_status_interval",
            "Description": "(s) Sets the maximum interval between WAL receiver status reports to the primary.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-2147483",
            "IsModifiable": false,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "wal_receiver_timeout",
            "ParameterValue": "30000",
            "Description": "(ms) Sets the maximum wait time to receive data from the primary.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-3600000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "wal_sender_timeout",
            "Description": "(ms) Sets the maximum time to wait for WAL replication.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "0-3600000",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "work_mem",
            "Description": "(kB) Sets the maximum memory to be used for query workspaces.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "integer",
            "AllowedValues": "64-2147483647",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "xmlbinary",
            "Description": "Sets how binary values are to be encoded in XML.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "base64,hex",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        },
        {
            "ParameterName": "xmloption",
            "Description": "Sets whether XML data in implicit parsing and serialization operations is to be considered as documents or content fragments.",
            "Source": "engine-default",
            "ApplyType": "dynamic",
            "DataType": "string",
            "AllowedValues": "content,document",
            "IsModifiable": true,
            "ApplyMethod": "pending-reboot",
            "SupportedEngineModes": [
                "provisioned"
            ]
        }
    ]
}
