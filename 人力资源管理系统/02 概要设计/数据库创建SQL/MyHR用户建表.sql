--�������ű�dept
CREATE TABLE dept
(
 dept_id   NUMBER(6) PRIMARY KEY,
 dept_name VARCHAR2(50),
 dept_loc  VARCHAR2(100)
);

--�������ű������
CREATE SEQUENCE dept_seq;


--����ְ���job
CREATE TABLE job
(
 job_id   NUMBER(6) PRIMARY KEY,
 job_name VARCHAR2(50) NOT NULL,
 job_min_sal NUMBER (6),
 job_max_sal NUMBER (6)
);

--����ְ��������
CREATE SEQUENCE job_seq;

--����Ա����Ϣ��emp
CREATE TABLE emp
(
 emp_id      NUMBER(6) PRIMARY KEY,
 emp_name    VARCHAR2 (50),
 emp_login_name VARCHAR2 (50) UNIQUE,
 emp_pwd        VARCHAR2 (50),
 emp_email      VARCHAR2 (100),
 emp_phone      VARCHAR2 (50),
 emp_salary     NUMBER (8,2),
 emp_hiredate   DATE,
 emp_dept_id    NUMBER (6),
 emp_job_id     NUMBER (6),
 emp_pic        CLOB,
 emp_info       VARCHAR2(2000)
);

--��Ա�����������emp_dept_id(�������ÿ�)
ALTER TABLE emp
ADD CONSTRAINTS emp_dept_id_fk FOREIGN KEY(emp_dept_id)
REFERENCES dept (dept_id)
ON DELETE SET NULL;

--��Ա�����������emp_job_id(������ɾ���ÿ�)
ALTER TABLE emp
ADD CONSTRAINTS emp_job_id_fk FOREIGN KEY(emp_job_id)
REFERENCES job (job_id)
ON DELETE SET NULL;

--����Ա���������
CREATE SEQUENCE emp_seq;

--������˾ͼ��pic��
CREATE TABLE pic
(
 pic_id  number(6)  PRIMARY KEY,
 pic_name VARCHAR2(100),
 pic_info VARCHAR2(500),
 pic_size NUMBER(10),
 pic_author VARCHAR2(50),
 pic_data BLOB,
 pic_datetime DATE
);

--����ͼƬ�������
CREATE SEQUENCE pic_seq;