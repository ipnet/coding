--liquibase formatted sql

-- changeset devops:20240219_01
drop table if exists book;
create table book
(
    id      bigserial not null primary key,
    detail  json      not null,
    authors json      not null,
    types   varchar[] not null
);
comment on table book is 'book';
comment on column book.id is 'id';
comment on column book.detail is 'detail';
comment on column book.authors is 'authors';
comment on column book.types is 'types';

-- changeset devops:20240422_01
drop table if exists student;
create table student
(
    id           bigserial   not null primary key,
    student_name varchar(50) not null default 'name',
    create_time  timestamp   not null default current_timestamp
);
comment on table student is 'student';
comment on column student.id is 'id';
comment on column student.student_name is 'Student Name';

insert into student(student_name)
values
    ('stu_001'),
    ('stu_002');


-- changeset devops:20240422_02
drop table if exists teacher;
create table teacher
(
    id           bigserial   not null primary key,
    teacher_name varchar(50) not null default 'name',
    create_time  timestamp   not null default current_timestamp
);
comment on table teacher is 'teacher';
comment on column teacher.id is 'id';
comment on column teacher.teacher_name is 'Teacher Name';

insert into teacher(teacher_name)
values
    ('teacher_001'),
    ('teacher_002'),
    ('teacher_003');
