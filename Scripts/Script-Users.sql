CREATE ROLE admin;
CREATE ROLE granja_manager;

CREATE USER admin_user WITH PASSWORD 'admin123';
CREATE USER manager_user WITH PASSWORD 'manager123';

GRANT admin TO admin_user;
GRANT granja_manager TO manager_user;


GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO granja_manager;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO admin;
