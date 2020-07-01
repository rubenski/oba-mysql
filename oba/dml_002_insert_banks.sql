use oba;
# Banks
INSERT INTO api_provider (system_name, display_name, implementation_key)
VALUES ('rabobank', 'Rabobank', 'rabobank');
INSERT INTO api_provider (system_name, display_name, implementation_key)
VALUES ('asn-bank-nl', 'ASN Bank', 'regiobank');
INSERT INTO api_provider (system_name, display_name, implementation_key)
VALUES ('sns-bank-nl', 'SNS Bank', 'regiobank');
INSERT INTO api_provider (system_name, display_name, implementation_key)
VALUES ('regiobank-nl', 'Regiobank', 'regiobank');
INSERT INTO api_provider (system_name, display_name, implementation_key)
VALUES ('ing-bank-nl', 'ING Bank NL', 'ing');
INSERT INTO api_provider (system_name, display_name, implementation_key)
VALUES ('ing-bank-fr', 'ING Bank FR', 'ing');

# Group types
INSERT INTO api_provider_group_type(id, group_type_name) VALUES (UUID_TO_BIN('ca80cfca-a8cb-11ea-bb37-0242ac130002'), 'REGIONAL_BANKS');
INSERT INTO api_provider_group_type(id, group_type_name) VALUES (UUID_TO_BIN('ca80d0c4-a8cb-11ea-bb37-0242ac130002'), 'BANKING_GROUP');

# Main service types
INSERT INTO main_service(system_name, display_name) values ('pis', 'Payment Initiation Services (PIS)');
INSERT INTO main_service(system_name, display_name) values ('ais', 'Account Information Services (AIS)');
INSERT INTO main_service(system_name, display_name) values ('transaction_enrichment', 'Transaction Enrichtment');

# Sub service types
INSERT INTO subservice(system_name, display_name, parent_main_service) values ('single-sepa', 'Single SEPA payments', 'pis');
INSERT INTO subservice(system_name, display_name, parent_main_service) values ('recurring-sepa', 'Recurring SEPA payments', 'pis');
INSERT INTO subservice(system_name, display_name, parent_main_service) values ('future-dated-sepa', 'Future dated SEPA payments', 'pis');
INSERT INTO subservice(system_name, display_name, parent_main_service) values ('recurring-international', 'Future dated international payments', 'pis');
INSERT INTO subservice(system_name, display_name, parent_main_service) values ('future-dated-international', 'Future dated international payments', 'pis');
INSERT INTO subservice(system_name, display_name, parent_main_service) values ('accounts-transactions', 'Accounts & Transactions', 'ais');
INSERT INTO subservice(system_name, display_name, parent_main_service) values ('tx-enrichment-merchants', 'Transactions Merchants', 'transaction_enrichment');
INSERT INTO subservice(system_name, display_name, parent_main_service) values ('tx-enrichment-categories', 'Transactions Categories', 'transaction_enrichment');

# Bank to group assignment
INSERT INTO api_provider_2_group_type(api_provider_system_name, group_type_id, group_name)
VALUES ('asn-bank-nl', UUID_TO_BIN('ca80d0c4-a8cb-11ea-bb37-0242ac130002'), 'Regiobank');
INSERT INTO api_provider_2_group_type(api_provider_system_name, group_type_id, group_name)
VALUES ('sns-bank-nl', UUID_TO_BIN('ca80d0c4-a8cb-11ea-bb37-0242ac130002'), 'Regiobank');
INSERT INTO api_provider_2_group_type(api_provider_system_name, group_type_id, group_name)
VALUES ('regiobank-nl', UUID_TO_BIN('ca80d0c4-a8cb-11ea-bb37-0242ac130002'), 'Regiobank');

# Bank APIs
INSERT INTO api(id, type, api_provider_system_name, base_url, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox) VALUES
(UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'PSD2', 'rabobank', 'https://api.rabobank.nl', true,  'RSA_2048', true, true);
INSERT INTO api(id, type, api_provider_system_name, base_url, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox) VALUES
(UUID_TO_BIN('5ecdfa3e-ab1c-11ea-bb37-0242ac130002'), 'ENRICHMENT', 'rabobank', 'https://api.rabobank.nl/enrich', true,  'RSA_2048', true, true);

INSERT INTO api(id, type, api_provider_system_name, base_url, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox) VALUES
(UUID_TO_BIN('ca80d362-a8cb-11ea-bb37-0242ac130002'), 'PSD2', 'asn-bank-nl', 'https://api.regiobank.nl', true,  'RSA_2048', true, true);

INSERT INTO api(id, type, api_provider_system_name, base_url, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox) VALUES
(UUID_TO_BIN('ca80d434-a8cb-11ea-bb37-0242ac130002'), 'PSD2', 'sns-bank-nl', 'https://api.regiobank.nl', true,  'RSA_2048', true, true);

INSERT INTO api(id, type, api_provider_system_name, base_url, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox) VALUES
(UUID_TO_BIN('ca80d4fc-a8cb-11ea-bb37-0242ac130002'), 'PSD2', 'regiobank-nl', 'https://api.regiobank.nl', true, 'RSA_2048', true, true);

INSERT INTO api(id, type, api_provider_system_name, base_url, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox) VALUES
(UUID_TO_BIN('ca80d5ba-a8cb-11ea-bb37-0242ac130002'), 'PSD2', 'ing-bank-nl', 'https://api.ing.nl', true, 'RSA_2048', true, true);

# Bank API to subservice - this indicates which subservices from the available API have been implemented by OBA
INSERT INTO api_2_subservice (api_id, subservice_system_name) VALUES (UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'accounts-transactions');
INSERT INTO api_2_subservice (api_id, subservice_system_name) VALUES (UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'single-sepa');
INSERT INTO api_2_subservice (api_id, subservice_system_name) VALUES (UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'future-dated-international');
INSERT INTO api_2_subservice (api_id, subservice_system_name) VALUES (UUID_TO_BIN('ca80d362-a8cb-11ea-bb37-0242ac130002'), 'accounts-transactions');
INSERT INTO api_2_subservice (api_id, subservice_system_name) VALUES (UUID_TO_BIN('ca80d434-a8cb-11ea-bb37-0242ac130002'), 'accounts-transactions');
INSERT INTO api_2_subservice (api_id, subservice_system_name) VALUES (UUID_TO_BIN('ca80d4fc-a8cb-11ea-bb37-0242ac130002'), 'accounts-transactions');
INSERT INTO api_2_subservice (api_id, subservice_system_name) VALUES (UUID_TO_BIN('ca80d5ba-a8cb-11ea-bb37-0242ac130002'), 'accounts-transactions');
INSERT INTO api_2_subservice (api_id, subservice_system_name) VALUES (UUID_TO_BIN('5ecdfa3e-ab1c-11ea-bb37-0242ac130002'), 'tx-enrichment-merchants');
INSERT INTO api_2_subservice (api_id, subservice_system_name) VALUES (UUID_TO_BIN('5ecdfa3e-ab1c-11ea-bb37-0242ac130002'), 'tx-enrichment-categories');

