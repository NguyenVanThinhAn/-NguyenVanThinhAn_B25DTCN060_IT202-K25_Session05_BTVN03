DROP DATABASE driver_management;
CREATE DATABASE driver_management;

USE driver_management;

CREATE TABLE drivers(
	id int primary key auto_increment,
    name varchar(255),
    status varchar(255),
    trust_score int,
    distance_km float(4,2)
);

INSERT INTO drivers (name, status, trust_score, distance_km) VALUES
('Nguyen Van A', 'AVAILABLE', 85, 12.50),
('Tran Thi B', 'INAVAILABLE', 70, 8.30),
('Le Van C', 'AVAILABLE', 92, 15.20),
('Pham Thi D', 'AVAILABLE', 60, 3.75),
('Hoang Van E', 'BLOCKED', 40, 20.10),
('Nguyen Thi F', 'AVAILABLE', 78, 6.60),
('Tran Van G', 'INAVAILABLE', 55, 10.00),
('Le Thi H', 'AVAILABLE', 88, 14.40),
('Pham Van I', 'AVAILABLE', 95, 2.90),
('Do Thi K', 'BLOCKED', 30, 18.25);

SELECT name,trust_score,distance_km FROM drivers WHERE status = "AVAILABLE" AND trust_score >= 80 ORDER BY distance_km ASC;

-- Check lần lượt từ trạng thái đến điểm uy tín cuối cùng sort.