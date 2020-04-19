INSERT INTO oba.organization (id, name, vat_number, street, street_number)
VALUES (UUID_TO_BIN('6cf9e92c-28b0-11ea-978f-2e728ce88125'), 'Ruben corp', '123', 'Levantkade', '259');

INSERT INTO oba.application (id, organization_id, name, technical_contact_name, technical_contact_email,
                             administrative_contact_name, administrative_contact_email)
VALUES (UUID_TO_BIN('abe71322-28b4-11ea-978f-2e728ce88125'), UUID_TO_BIN('6cf9e92c-28b0-11ea-978f-2e728ce88125'), 'Ruben app',
        'Ruben', 'rubenski@gmail.com', 'Ruben', 'rubenski@gmail.com');

INSERT INTO oba.application_public_key (id, application_id, kid, public_key)
VALUES (UUID_TO_BIN('446095ec-28b5-11ea-978f-2e728ce88125'), UUID_TO_BIN('abe71322-28b4-11ea-978f-2e728ce88125'),
        'kid-123', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsdNN9cIVjLjecfOuRMf3
5xxPQSfQB4hXg6ChT0ggo62+91FxkXvhwrwIhXmJOEvVb5j0Q0u4Ldf7WUqtk/Eo
vhGQRUy30O1FHVBy9EnUPIhiiCFP5/V8F7hcehbCRQ4K+UFLNmtKO2fd4Evmvdzt
eNhsJAX8OpE7oy7ga55EML3/wY/pGPitwOB6LI4L5JTI0DlI7MUheRO36aIISe5B
DcUHOHjzEpAaqq68B3TEAfThUOv4gcEeD+XpH2Im/ms8dzlE20RbP3BXHn2BWt3T
d2TRjk1EEMnrvuyZBnrsIEZ8fz/VSIgl15jTti1yeyWRuRZRG9a5+T6MDajiDS2M
0QIDAQAB
-----END PUBLIC KEY-----');



