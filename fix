#!/bin/bash

> nohup.out

mysql -u root <<EOF
USE graveyard;

ALTER TABLE hashes CHANGE password_hash passwords VARCHAR(255);
DELETE FROM hashes;

INSERT INTO hashes (id, passwords) VALUES
(1, 'not here'),
(2, 'nope'),
(3, 'no'),
(4, 'SCARE{CH1LL1N6_CH4NT}'),
(5, 'bruh');
EOF
