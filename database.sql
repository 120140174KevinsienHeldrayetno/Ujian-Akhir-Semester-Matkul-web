CREATE DATABASE IF NOT EXISTS db_uas;

USE db_uas;

CREATE TABLE datop (
  id INT AUTO_INCREMENT NOT NULL,
  nama VARCHAR(100) NOT NULL,
  opclass VARCHAR(255) NOT NULL,
  jenis_skill VARCHAR(50) NOT NULL,
  country VARCHAR(50) NOT NULL,
  browser VARCHAR(255) NOT NULL,
  ip_address VARCHAR(50) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

INSERT INTO pemesanan (nama, opclass, jenis_skill, country, browser, ip_address)
VALUES
  ('Muelsyse', 'Vanguard, Guard', 'Active','Rim Billiton', 'Chrome', '192.168.0.1'),
  ('Amiya', 'Guard', 'Active','Rim Billiton', 'Firefox', '192.168.0.2'),
  ('Skadi', 'Guard' , 'Passive','Rim Billiton','Opera', '192.168.0.3'),
  ('Mudrock', 'Defender', 'Passive','Rim Billiton', 'Edge', '192.168.1.1');
