#!/bin/bash

# Clear nohup.out
> nohup.out

# Run SQL commands
mysql -u root <<EOF
USE graveyard;

-- Rename the table
RENAME TABLE hashes TO passwords;

-- Rename the column
ALTER TABLE passwords CHANGE password_hash passwords VARCHAR(255);

-- Delete all existing rows
DELETE FROM passwords;

-- Insert new rows
INSERT INTO passwords (id, passwords) VALUES
(1, 'not here'),
(2, 'nope'),
(3, 'no'),
(4, 'SCARE{CH1LL1N6_CH4NT}'),
(5, 'bruh');
EOF
