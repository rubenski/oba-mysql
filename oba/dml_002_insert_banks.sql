use oba;
INSERT INTO bank (system_name, display_name, implementation_key)
VALUES ('rabobank', 'Rabobank', 'rabobank');

INSERT INTO bank (system_name, display_name, implementation_key)
VALUES ('asn-bank-nl', 'ASN Bank', 'regiobank');
INSERT INTO bank (system_name, display_name, implementation_key)
VALUES ('sns-bank-nl', 'SNS Bank', 'regiobank');
INSERT INTO bank (system_name, display_name, implementation_key)
VALUES ('regiobank-nl', 'Regiobank', 'regiobank');

INSERT INTO bank_group_type(id, group_type_name) VALUES (UUID_TO_BIN('ca80cdb8-a8cb-11ea-bb37-0242ac130002'), 'REGIONAL_BANKS');
INSERT INTO bank_group_type(id, group_type_name) VALUES (UUID_TO_BIN('ca80cfca-a8cb-11ea-bb37-0242ac130002'), 'COUNTRY_BANKS');
INSERT INTO bank_group_type(id, group_type_name) VALUES (UUID_TO_BIN('ca80d0c4-a8cb-11ea-bb37-0242ac130002'), 'BANKING_GROUP');

INSERT INTO api_service(name) values ('PIS');
INSERT INTO api_service(name) values ('AIS');

INSERT INTO bank_2_group_type(bank_system_name, group_type_id, group_name) VALUES ('asn-bank-nl', UUID_TO_BIN('ca80cdb8-a8cb-11ea-bb37-0242ac130002'), 'Regiobank');

INSERT INTO bank_api(id, bank_system_name, base_url, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox) VALUES
(UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'rabobank', 'https://api.rabobank.nl', true,  'RSA_2048', true, true);
INSERT INTO bank_api_2_service(bank_api_id, name) VALUES (UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'PIS');
INSERT INTO bank_api_2_service(bank_api_id, name) VALUES (UUID_TO_BIN('ca80d196-a8cb-11ea-bb37-0242ac130002'), 'AIS');

INSERT INTO bank_api(id, bank_system_name, base_url, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox) VALUES
(UUID_TO_BIN('ca80d362-a8cb-11ea-bb37-0242ac130002'), 'asn-bank-nl', 'https://api.regiobank.nl', true,  'RSA_2048', true, true);
INSERT INTO bank_api_2_service(bank_api_id, name) VALUES (UUID_TO_BIN('ca80d362-a8cb-11ea-bb37-0242ac130002'), 'PIS');
INSERT INTO bank_api_2_service(bank_api_id, name) VALUES (UUID_TO_BIN('ca80d362-a8cb-11ea-bb37-0242ac130002'), 'AIS');

INSERT INTO bank_api(id, bank_system_name, base_url, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox) VALUES
(UUID_TO_BIN('ca80d434-a8cb-11ea-bb37-0242ac130002'), 'sns-bank-nl', 'https://api.regiobank.nl', true,  'RSA_2048', true, true);
INSERT INTO bank_api_2_service(bank_api_id, name) VALUES (UUID_TO_BIN('ca80d434-a8cb-11ea-bb37-0242ac130002'), 'PIS');
INSERT INTO bank_api_2_service(bank_api_id, name) VALUES (UUID_TO_BIN('ca80d434-a8cb-11ea-bb37-0242ac130002'), 'AIS');

INSERT INTO bank_api(id, bank_system_name, base_url, request_signing_used, request_signing_algorithm, mutual_tls_used, is_sandbox) VALUES
(UUID_TO_BIN('ca80d4fc-a8cb-11ea-bb37-0242ac130002'), 'regiobank-nl', 'https://api.regiobank.nl', true,  'RSA_2048', true, true);
INSERT INTO bank_api_2_service(bank_api_id, name) VALUES (UUID_TO_BIN('ca80d4fc-a8cb-11ea-bb37-0242ac130002'), 'PIS');
INSERT INTO bank_api_2_service(bank_api_id, name) VALUES (UUID_TO_BIN('ca80d4fc-a8cb-11ea-bb37-0242ac130002'), 'AIS');


INSERT INTO bank (system_name, display_name, implementation_key)
VALUES ('abn-amro-nl', 'ABN AMRO Bank', 'abn-amro');
INSERT INTO bank (system_name, display_name, implementation_key)
VALUES ('ing-bank-nl', 'ING Bank NL', 'ing');
