create table employee
(
    empno int not null,
    empname char(10) unique,
    title char (10) default '사원',
    manager int,
    salary int,
    dno int default 1,
    primary key (empno),
    foreign key (manager) references employee (empno),
    foreign key (dno) references department (deptno) on update cascade
);

insert into
    employee
values
    (4377, '이성래', '사장', null, 5000000, 2),

    (3426, '박영권', '과장', 4377, 3000000, 1),

    (3011, '이수민', '부장', 4377, 4000000, 3),

    (3427, '최종철', '사원', 3011, 1500000, 3),

    (1003, '조민희', '과장', 4377, 3000000, 2),

    (2106, '김창섭', '대리', 1003, 2500000, 2),

    (1365, '김상원', '사원', 3426, 1500000, 1)
