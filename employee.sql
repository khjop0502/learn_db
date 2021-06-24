create table employee(
    empno int not null,
    empname char(10) unique,
    title char (10) default '���',
    manager int,
    salary int,
    dno int default 1,
    primary key (empno),
    foreign key (manager) references employee (empno),
    foreign key (dno) references department (deptno) on update cascade
) engine = innodb;

insert into
    employee
values
    (4377, '�̼���', '����', null, 5000000, 2);

insert into
    employee
values
    (3426, '�ڿ���', '����', 4377, 3000000, 1);

insert into
    employee
values
    (3011, '�̼���', '����', 4377, 4000000, 3);

insert into
    employee
values
    (3427, '����ö', '���', 3011, 1500000, 3);

insert into
    employee
values
    (1003, '������', '����', 4377, 3000000, 2);

insert into
    employee
values
    (2106, '��â��', '�븮', 1003, 2500000, 2);

insert into
    employee
values
    (1365, '����', '���', 3426, 1500000, 1);