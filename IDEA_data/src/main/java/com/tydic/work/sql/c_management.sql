drop database IF EXISTS c_management;
create database c_management;
use c_management;

DROP TABLE IF EXISTS `repo`;
CREATE TABLE `repo` (
  `rid` int(11) PRIMARY KEY auto_increment,
  `rname` varchar(20) NOT NULL,	
  `rplace` varchar(255) NOT NULL	
)DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

DROP TABLE IF EXISTS `cargo`;
CREATE TABLE `cargo` (
  `cid` int(11) PRIMARY KEY auto_increment,
  `cname` varchar(20) NOT NULL
)DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

DROP TABLE IF EXISTS `relation`;
CREATE TABLE `relation` (              
  `id` int(11) PRIMARY KEY auto_increment,
  `rid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `ramount` int(11) NOT NULL,
  FOREIGN KEY(rid) REFERENCES repo(rid),
  FOREIGN KEY(cid) REFERENCES cargo(cid)
)DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

DROP TABLE IF EXISTS `sku`;
CREATE TABLE `sku` (              
  `sid` int(11) PRIMARY KEY auto_increment,
  `cid` int(11) NOT NULL,
  `color` varchar(10) NOT NULL,
  `samount` int(11) NOT NULL,
  FOREIGN KEY(cid) REFERENCES cargo(cid)
)DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;






insert into repo values(1, '�����ֿ�', '����ʡ�Ϸ�������У��');
insert into repo values(2, '��Դ�ϿƲֿ�', '����ʡ�Ϸ�����Դ�Ͽ�');
insert into repo values(3, '�л��ǲֿ�', '����ʡ�Ϸ�����ɽ���л���');

insert into cargo values(1, '��Ϊ��ҫ');
insert into cargo values(2, '��Ϊ�ഺ');
insert into cargo values(3, 'С��');
insert into cargo values(4, 'oppoFind');
insert into cargo values(5, '����');
insert into cargo values(6, 'oppoX');

insert into relation values(1,1,1,200);
insert into relation values(2,1,2,200);
insert into relation values(3,2,3,200);
insert into relation values(4,3,4,200);
insert into relation values(5,2,5,200);
insert into relation values(6,3,6,200);

insert into sku values(1,1,'��ɫ',100);
insert into sku values(2,1,'��ɫ',100);
insert into sku values(3,2,'��ɫ',200);
insert into sku values(4,3,'��ɫ',100);
insert into sku values(5,3,'��ɫ',100);
insert into sku values(6,4,'��ɫ',200);
insert into sku values(7,5,'��ɫ',200);
insert into sku values(8,6,'��ɫ',200);