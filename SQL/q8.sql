create Table emplys(employeeId INT, employeeName VARCHAR(255), managerId INT);
INSERT into emplys(employeeId, employeeName, managerId) VALUES(1, 'john doe', NULL);
INSERT into emplys(employeeId, employeeName, managerId) VALUES(2, 'jane smith', 1);
INSERT into emplys(employeeId, employeeName, managerId) VALUES(3, 'alice brown', 1);
INSERT into emplys(employeeId, employeeName, managerId) VALUES(4, 'bob johnson', 2);
INSERT into emplys(employeeId, employeeName, managerId) VALUES(5, 'charlie black', NULL);


SELECT * from emplys
select employeeName from emplys where managerId is NULL;