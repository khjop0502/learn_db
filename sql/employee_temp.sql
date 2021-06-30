create table employee (
    empno integer not null,
    empname char(10) unique,
    title char(10) default '»ç¿ø',
    manager integer,
    salary integer check (salary < 6000000),
    dno integer check (dno in (1, 2, 3, 4, 5, 6)) default 1,
    primary key (empno),
    foreign key (manager) references employee(empno),
    foreign key (dno) references department (deptno)
    on delete cascade
);