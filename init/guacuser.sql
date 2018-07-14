--
-- Create 'guac' user for 'guacamole' database. Database 
-- already created during container creation.
-- http://guacamole.apache.org/doc/gug/jdbc-auth.html#jdbc-auth-mysql
-- CHANGE PASSWORD TO SOMETHING MORE SECURE.

CREATE USER 'guacamole_user' IDENTIFIED BY 'password';

--
-- Give 'guacamole_user' user required permissions.
--

GRANT SELECT,INSERT,UPDATE,DELETE on guacamole_db.* TO 'guacamole_user'@'%';

--
-- Apply privileges.
--

FLUSH PRIVILEGES;
