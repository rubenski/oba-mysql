use oba;
# Banks
INSERT INTO bank (system_name, display_name, implementation_key)
VALUES ('rabobank', 'Rabobank', 'rabobank');
INSERT INTO bank (system_name, display_name, implementation_key)
VALUES ('asn-bank-nl', 'ASN Bank', 'regiobank');
INSERT INTO bank (system_name, display_name, implementation_key)
VALUES ('sns-bank-nl', 'SNS Bank', 'regiobank');
INSERT INTO bank (system_name, display_name, implementation_key)
VALUES ('regiobank-nl', 'Regiobank', 'regiobank');
INSERT INTO bank (system_name, display_name, implementation_key)
VALUES ('ing-bank-nl', 'ING Bank NL', 'ing');

# Group types
INSERT INTO bank_group_type(id, group_type_name) VALUES (UUID_TO_BIN('ca80cdb8-a8cb-11ea-bb37-0242ac130002'), 'REGIONAL_BANKS');
INSERT INTO bank_group_type(id, group_type_name) VALUES (UUID_TO_BIN('ca80cfca-a8cb-11ea-bb37-0242ac130002'), 'COUNTRY_BANKS');
INSERT INTO bank_group_type(id, group_type_name) VALUES (UUID_TO_BIN('ca80d0c4-a8cb-11ea-bb37-0242ac130002'), 'BANKING_GROUP');

# Service types
INSERT INTO bank_api_offered_service(system_name, display_name) values ('pis', 'Payment Initiation Services (PIS)');
INSERT INTO bank_api_offered_service(system_name, display_name) values ('ais', 'Account Information Services (AIS)');

# Sub service types
INSERT INTO bank_api_subservice(system_name, display_name, parent_offered_service) values ('single-sepa', 'Single SEPA payments', 'pis');
INSERT INTO bank_api_subservice(system_name, display_name, parent_offered_service) values ('recurring-sepa', 'Recurring SEPA payments', 'pis');
INSERT INTO bank_api_subservice(system_name, display_name, parent_offered_service) values ('future-dated-sepa', 'Future dated SEPA payments', 'pis');
INSERT INTO bank_api_subservice(system_name, display_name, parent_offered_service) values ('recurring-international', 'Future dated international payments', 'pis');
INSERT INTO bank_api_subservice(system_name, display_name, parent_offered_service) values ('future-dated-international', 'Future dated international payments', 'pis');
INSERT INTO bank_api_subservice(system_name, display_name, parent_offered_service) values ('accounts-transactions', 'Accounts & Transactions', 'ais');

# Bank to group assignment
INSERT INTO bank_2_group_type(bank_system_name, group_type_id, group_name)
VALUES ('asn-bank-nl', UUID_TO_BIN('ca80cdb8-a8cb-11ea-bb37-0242ac130002'), 'Regiobank');

# Bank APIs
INSERT INTO bank_api(id, type, bank_system_name, base_url, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox) VALUES
(UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'PSD2', 'rabobank', 'https://api.rabobank.nl', true,  'RSA_2048', true, true);
INSERT INTO bank_api_2_offered_service(bank_api_id, api_service_system_name) VALUES (UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'pis');
INSERT INTO bank_api_2_offered_service(bank_api_id, api_service_system_name) VALUES (UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'ais');

INSERT INTO bank_api(id, type, bank_system_name, base_url, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox) VALUES
(UUID_TO_BIN('ca80d362-a8cb-11ea-bb37-0242ac130002'), 'PSD2', 'asn-bank-nl', 'https://api.regiobank.nl', true,  'RSA_2048', true, true);
INSERT INTO bank_api_2_offered_service(bank_api_id, api_service_system_name) VALUES (UUID_TO_BIN('ca80d362-a8cb-11ea-bb37-0242ac130002'), 'pis');
INSERT INTO bank_api_2_offered_service(bank_api_id, api_service_system_name) VALUES (UUID_TO_BIN('ca80d362-a8cb-11ea-bb37-0242ac130002'), 'ais');

INSERT INTO bank_api(id, type, bank_system_name, base_url, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox) VALUES
(UUID_TO_BIN('ca80d434-a8cb-11ea-bb37-0242ac130002'), 'PSD2', 'sns-bank-nl', 'https://api.regiobank.nl', true,  'RSA_2048', true, true);
INSERT INTO bank_api_2_offered_service(bank_api_id, api_service_system_name) VALUES (UUID_TO_BIN('ca80d434-a8cb-11ea-bb37-0242ac130002'), 'pis');
INSERT INTO bank_api_2_offered_service(bank_api_id, api_service_system_name) VALUES (UUID_TO_BIN('ca80d434-a8cb-11ea-bb37-0242ac130002'), 'ais');

INSERT INTO bank_api(id, type, bank_system_name, base_url, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox) VALUES
(UUID_TO_BIN('ca80d4fc-a8cb-11ea-bb37-0242ac130002'), 'PSD2', 'regiobank-nl', 'https://api.regiobank.nl', true, 'RSA_2048', true, true);
INSERT INTO bank_api_2_offered_service(bank_api_id, api_service_system_name) VALUES (UUID_TO_BIN('ca80d4fc-a8cb-11ea-bb37-0242ac130002'), 'pis');
INSERT INTO bank_api_2_offered_service(bank_api_id, api_service_system_name) VALUES (UUID_TO_BIN('ca80d4fc-a8cb-11ea-bb37-0242ac130002'), 'ais');

INSERT INTO bank_api(id, type, bank_system_name, base_url, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox) VALUES
(UUID_TO_BIN('ca80d5ba-a8cb-11ea-bb37-0242ac130002'), 'PSD2', 'ing-bank-nl', 'https://api.ing.nl', true, 'RSA_2048', true, true);
INSERT INTO bank_api_2_offered_service(bank_api_id, api_service_system_name) VALUES (UUID_TO_BIN('ca80d5ba-a8cb-11ea-bb37-0242ac130002'), 'pis');
INSERT INTO bank_api_2_offered_service(bank_api_id, api_service_system_name) VALUES (UUID_TO_BIN('ca80d5ba-a8cb-11ea-bb37-0242ac130002'), 'ais');

# Bank API to subservice - this indicates which subservices from the available API have been implemented by OBA
INSERT INTO bank_api_2_subservice (bank_api_id, subservice_system_name) VALUES (UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'accounts-transactions');
INSERT INTO bank_api_2_subservice (bank_api_id, subservice_system_name) VALUES (UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'single-sepa');
INSERT INTO bank_api_2_subservice (bank_api_id, subservice_system_name) VALUES (UUID_TO_BIN('ca80d362-a8cb-11ea-bb37-0242ac130002'), 'accounts-transactions');
INSERT INTO bank_api_2_subservice (bank_api_id, subservice_system_name) VALUES (UUID_TO_BIN('ca80d434-a8cb-11ea-bb37-0242ac130002'), 'accounts-transactions');
INSERT INTO bank_api_2_subservice (bank_api_id, subservice_system_name) VALUES (UUID_TO_BIN('ca80d4fc-a8cb-11ea-bb37-0242ac130002'), 'accounts-transactions');
INSERT INTO bank_api_2_subservice (bank_api_id, subservice_system_name) VALUES (UUID_TO_BIN('ca80d5ba-a8cb-11ea-bb37-0242ac130002'), 'accounts-transactions');

