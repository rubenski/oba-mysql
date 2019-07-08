USE oba;
insert into oba.client (id, email, name, created) VALUES ("c9849a64-be20-4f0e-b3a8-d2c9217b7782", "rubenski@gmail.com", "test client", "2019-05-05 10:10:10");

insert into oba.client_key(key_id, client_id, public_key, created) VALUES ("8afdb7fc-35c0-4626-a518-8c2bbf446429", "c9849a64-be20-4f0e-b3a8-d2c9217b7782", "-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyU2xJlidZHIqEmJbFaxC
aNoTtqtFYSCJnX/mHALzOh5ADyie2r4XYNsuUW/1oFa8Xv6kLAhmKyBMIyZpIrqM
kXy9zmhubUIFt63XjsXaY7ZFiyuWvzUA+xTDgaS3NwFTvhT1iiwcCQI8WEAq/ims
g0/e8O3n+Vl+zbjGIVjH8IYoIAB+eMyudYi7xGd0hgk3tqULbPFPp+VwaYV49IWA
ptaHjP3bFgsKejEBlMppCg5k2S5PUbFxjE+KK39S9F/Nl8nRmQOQh6aZuD8ntoik
zIBq54FdMQ14NiiWJrDuibvZECey/jJq/dd3FVYpMnzWuexKUtO0U6/S6AGpKQDY
8wIDAQAB
-----END PUBLIC KEY-----", "2019-05-05 10:10:10");


