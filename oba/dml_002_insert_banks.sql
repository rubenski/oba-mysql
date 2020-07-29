use oba;

# Apis

# Rabobank
INSERT INTO api(id, type, flow_type, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox, connection_per_account, status, multiple_redirects)
VALUES (UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'PSD2', 'OAUTH', true, 'RSA_2048', true, true, false, 'BETA', false);

# Volksbank
INSERT INTO api(id, type, flow_type, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox, connection_per_account, status, multiple_redirects)
VALUES (UUID_TO_BIN('cf32581c-c2f3-11ea-b3de-0242ac130004'), 'PSD2', 'OAUTH', true, 'RSA_2048', true, true, false, 'ENABLED', false);

# ING
INSERT INTO api(id, type, flow_type, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox, connection_per_account, status, multiple_redirects)
VALUES (UUID_TO_BIN('da15593c-c2f3-11ea-b3de-0242ac130004'), 'PSD2', 'OAUTH', true, 'RSA_2048', true, true, false, 'ENABLED', false);


# Products
INSERT INTO product(name) VALUES ('current_account');
INSERT INTO product(name) VALUES ('savings_account');
INSERT INTO product(name) VALUES ('credit_card');
INSERT INTO product(name) VALUES ('debit_card');
INSERT INTO product(name) VALUES ('card');

# Apis to products
INSERT INTO api_2_product VALUES(UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'current_account');
INSERT INTO api_2_product VALUES(UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'credit_card');

INSERT INTO api_2_product VALUES(UUID_TO_BIN('cf32581c-c2f3-11ea-b3de-0242ac130004'), 'current_account');
INSERT INTO api_2_product VALUES(UUID_TO_BIN('cf32581c-c2f3-11ea-b3de-0242ac130004'), 'credit_card');

INSERT INTO api_2_product VALUES(UUID_TO_BIN('da15593c-c2f3-11ea-b3de-0242ac130004'), 'current_account');
INSERT INTO api_2_product VALUES(UUID_TO_BIN('da15593c-c2f3-11ea-b3de-0242ac130004'), 'credit_card');
INSERT INTO api_2_product VALUES(UUID_TO_BIN('da15593c-c2f3-11ea-b3de-0242ac130004'), 'debit_card');

# Country data provider
INSERT INTO country_data_provider (system_name, display_name, api_id, country, time_zone, currency)
VALUES ('rabobank', 'Rabobank', UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'NLD', 'Europe/Amsterdam', 'EUR');

INSERT INTO country_data_provider (system_name, display_name, api_id, country, time_zone, currency, group_name)
VALUES ('asn-bank', 'ASN Bank', UUID_TO_BIN('cf32581c-c2f3-11ea-b3de-0242ac130004'), 'NLD', 'Europe/Amsterdam', 'EUR',
        'Volksbank');

INSERT INTO country_data_provider (system_name, display_name, api_id, country, time_zone, currency, group_name)
VALUES ('sns-bank', 'SNS Banks', UUID_TO_BIN('cf32581c-c2f3-11ea-b3de-0242ac130004'), 'NLD', 'Europe/Amsterdam', 'EUR',
        'Volksbank');

INSERT INTO country_data_provider (system_name, display_name, api_id, country, time_zone, currency, group_name)
VALUES ('regiobank', 'Regiobank', UUID_TO_BIN('cf32581c-c2f3-11ea-b3de-0242ac130004'), 'NLD', 'Europe/Amsterdam', 'EUR',
        'Volksbank');

INSERT INTO country_data_provider (system_name, display_name, api_id, country, time_zone, currency)
VALUES ('ing-bank-nl', 'ING Bank NL', UUID_TO_BIN('da15593c-c2f3-11ea-b3de-0242ac130004'), 'NLD', 'Europe/Amsterdam', 'EUR');

INSERT INTO country_data_provider (system_name, display_name, api_id, country, time_zone, currency)
VALUES ('ing-bank-fr', 'ING Bank Fr', UUID_TO_BIN('da15593c-c2f3-11ea-b3de-0242ac130004'), 'FRA', 'Europe/Paris', 'EUR');

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

# Volksbank
INSERT INTO api_2_subservice (api_id, subservice_system_name)
VALUES (UUID_TO_BIN('cf32581c-c2f3-11ea-b3de-0242ac130004'), 'accounts-transactions');

# ING
INSERT INTO api_2_subservice (api_id, subservice_system_name)
VALUES (UUID_TO_BIN('da15593c-c2f3-11ea-b3de-0242ac130004'), 'accounts-transactions');



