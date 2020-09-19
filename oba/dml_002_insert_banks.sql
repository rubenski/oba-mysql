use oba;

# Apis

update oba.api
set ais_redirects = '[\"authenticate_with_credentials\", \"authenticate_with_mfa\"]'
where id = UUID_TO_BIN('ba34741c-ed4c-11ea-adc1-0242ac120002');
update oba.api
set ais_redirects = '[\"authenticate_all\"]'
where id = UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002');
update oba.api
set ais_redirects = '[\"authenticate_all\"]'
where id = UUID_TO_BIN('da15593c-c2f3-11ea-b3de-0242ac130004');
update oba.api
set ais_redirects = '[\"authenticate_all\"]'
where id = UUID_TO_BIN('bad77920-f2ef-11ea-adc1-0242ac120002');

# Rabobank
INSERT INTO api(id, type, flow_type, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox,
                connection_per_account, status, ais_redirects)
VALUES (UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'PSD2', 'OAUTH', true, 'RSA_2048', true, true, false,
        'BETA', '[\'authenticate_all\']');

# ING
INSERT INTO api(id, type, flow_type, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox,
                connection_per_account, status, ais_redirects)
VALUES (UUID_TO_BIN('da15593c-c2f3-11ea-b3de-0242ac130004'), 'PSD2', 'OAUTH', true, 'RSA_2048', true, true, false,
        'AVAILABLE', '[\'authenticate_all\']');

# RedSys
INSERT INTO api(id, type, flow_type, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox,
                connection_per_account, status, ais_redirects)
VALUES (UUID_TO_BIN('ba34741c-ed4c-11ea-adc1-0242ac120002'), 'PSD2', 'OAUTH', true, 'RSA_2048', true, true, false,
        'AVAILABLE', '[\'authenticate_with_credentials\', \'authenticate_with_mfa\']');

# Abn Amro
INSERT INTO api(id, type, flow_type, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox,
                connection_per_account, status, ais_redirects)
VALUES (UUID_TO_BIN('bad77920-f2ef-11ea-adc1-0242ac120002'), 'PSD2', 'OAUTH', true, 'RSA_2048', true, true, true,
        'AVAILABLE', '[\'authenticate_all\']');


# Products
INSERT INTO product(name)
VALUES ('current_account');
INSERT INTO product(name)
VALUES ('savings_account');
INSERT INTO product(name)
VALUES ('credit_card');
INSERT INTO product(name)
VALUES ('debit_card');
INSERT INTO product(name)
VALUES ('card');

# Apis to products

# Rabobank (double check)
INSERT INTO api_2_product
VALUES (UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'current_account');
# INSERT INTO api_2_product VALUES(UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'credit_card');

INSERT INTO api_2_product
VALUES (UUID_TO_BIN('da15593c-c2f3-11ea-b3de-0242ac130004'), 'current_account');
INSERT INTO api_2_product
VALUES (UUID_TO_BIN('da15593c-c2f3-11ea-b3de-0242ac130004'), 'credit_card');
INSERT INTO api_2_product
VALUES (UUID_TO_BIN('da15593c-c2f3-11ea-b3de-0242ac130004'), 'debit_card');

# RedSys  (supports current account only)
INSERT INTO api_2_product
VALUES (UUID_TO_BIN('ba34741c-ed4c-11ea-adc1-0242ac120002'), 'current_account');

# Abn Amro
INSERT INTO api_2_product
VALUES (UUID_TO_BIN('bad77920-f2ef-11ea-adc1-0242ac120002'), 'current_account');

# Country data provider
INSERT INTO country_data_provider (system_name, display_name, api_id, country, time_zone, currency)
VALUES ('nl_rabobank_sandbox', 'Rabobank', UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'NLD',
        'Europe/Amsterdam', 'EUR');

INSERT INTO country_data_provider (system_name, display_name, api_id, country, time_zone, currency)
VALUES ('nl_ing_sandbox', 'ING Bank NL', UUID_TO_BIN('da15593c-c2f3-11ea-b3de-0242ac130004'), 'NLD', 'Europe/Amsterdam',
        'EUR');

INSERT INTO country_data_provider (system_name, display_name, api_id, country, time_zone, currency)
VALUES ('fr_ing_sandbox', 'ING Bank Fr', UUID_TO_BIN('da15593c-c2f3-11ea-b3de-0242ac130004'), 'FRA', 'Europe/Paris',
        'EUR');

INSERT INTO country_data_provider (system_name, display_name, api_id, country, time_zone, currency)
VALUES ('es_sabadell_sandbox', 'Sabadell', UUID_TO_BIN('ba34741c-ed4c-11ea-adc1-0242ac120002'), 'ESP', 'Europe/Madrid',
        'EUR');

INSERT INTO country_data_provider (system_name, display_name, api_id, country, time_zone, currency)
VALUES ('es_santander_sandbox', 'Santander', UUID_TO_BIN('ba34741c-ed4c-11ea-adc1-0242ac120002'), 'ESP',
        'Europe/Madrid', 'EUR');

INSERT INTO country_data_provider (system_name, display_name, api_id, country, time_zone, currency)
VALUES ('es_bankia_sandbox', 'Bankia', UUID_TO_BIN('ba34741c-ed4c-11ea-adc1-0242ac120002'), 'ESP', 'Europe/Madrid',
        'EUR');

INSERT INTO country_data_provider (system_name, display_name, api_id, country, time_zone, currency)
VALUES ('es_bbva_sandbox', 'BBVA', UUID_TO_BIN('ba34741c-ed4c-11ea-adc1-0242ac120002'), 'ESP', 'Europe/Madrid', 'EUR');

INSERT INTO country_data_provider (system_name, display_name, api_id, country, time_zone, currency)
VALUES ('es_self_bank_sandbox', 'Self Bank', UUID_TO_BIN('ba34741c-ed4c-11ea-adc1-0242ac120002'), 'ESP',
        'Europe/Madrid', 'EUR');

INSERT INTO country_data_provider (system_name, display_name, api_id, country, time_zone, currency)
VALUES ('es_evobanco_sandbox', 'EVO Banco', UUID_TO_BIN('ba34741c-ed4c-11ea-adc1-0242ac120002'), 'ESP', 'Europe/Madrid',
        'EUR');

INSERT INTO country_data_provider (system_name, display_name, api_id, country, time_zone, currency)
VALUES ('es_caixa_sandbox', 'Caixa', UUID_TO_BIN('ba34741c-ed4c-11ea-adc1-0242ac120002'), 'ESP', 'Europe/Madrid',
        'EUR');

INSERT INTO country_data_provider (system_name, display_name, api_id, country, time_zone, currency)
VALUES ('es_bankinter_sandbox', 'Bankinter', UUID_TO_BIN('ba34741c-ed4c-11ea-adc1-0242ac120002'), 'ESP',
        'Europe/Madrid', 'EUR');

INSERT INTO country_data_provider (system_name, display_name, api_id, country, time_zone, currency)
VALUES ('nl_abnamro_sandbox', 'ABN AMRO', UUID_TO_BIN('bad77920-f2ef-11ea-adc1-0242ac120002'), 'NLD',
        'Europe/Amsterdam', 'EUR');


# Main service types
INSERT INTO main_service(system_name, display_name)
values ('pis', 'Payment Initiation Services (PIS)');
INSERT INTO main_service(system_name, display_name)
values ('ais', 'Account Information Services (AIS)');
INSERT INTO main_service(system_name, display_name)
values ('transaction_enrichment', 'Transaction Enrichtment');

# Sub service types
INSERT INTO subservice(system_name, display_name, parent_main_service)
values ('single-sepa', 'Single SEPA payments', 'pis');
INSERT INTO subservice(system_name, display_name, parent_main_service)
values ('recurring-sepa', 'Recurring SEPA payments', 'pis');
INSERT INTO subservice(system_name, display_name, parent_main_service)
values ('future-dated-sepa', 'Future dated SEPA payments', 'pis');
INSERT INTO subservice(system_name, display_name, parent_main_service)
values ('recurring-international', 'Future dated international payments', 'pis');
INSERT INTO subservice(system_name, display_name, parent_main_service)
values ('future-dated-international', 'Future dated international payments', 'pis');
INSERT INTO subservice(system_name, display_name, parent_main_service)
values ('accounts-transactions', 'Accounts & Transactions', 'ais');
INSERT INTO subservice(system_name, display_name, parent_main_service)
values ('tx-enrichment-merchants', 'Transactions Merchants', 'transaction_enrichment');
INSERT INTO subservice(system_name, display_name, parent_main_service)
values ('tx-enrichment-categories', 'Transactions Categories', 'transaction_enrichment');

# Bank API to subservice - this indicates which subservices from the available API have been implemented by OBA

# Rabo
INSERT INTO api_2_subservice (api_id, subservice_system_name)
VALUES (UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'accounts-transactions');
INSERT INTO api_2_subservice (api_id, subservice_system_name)
VALUES (UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'single-sepa');
INSERT INTO api_2_subservice (api_id, subservice_system_name)
VALUES (UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'future-dated-international');

# ING
INSERT INTO api_2_subservice (api_id, subservice_system_name)
VALUES (UUID_TO_BIN('da15593c-c2f3-11ea-b3de-0242ac130004'), 'accounts-transactions');

# RedSys
INSERT INTO api_2_subservice (api_id, subservice_system_name)
VALUES (UUID_TO_BIN('ba34741c-ed4c-11ea-adc1-0242ac120002'), 'accounts-transactions');

# ABN AMRO
INSERT INTO api_2_subservice (api_id, subservice_system_name)
VALUES (UUID_TO_BIN('bad77920-f2ef-11ea-adc1-0242ac120002'), 'accounts-transactions');


