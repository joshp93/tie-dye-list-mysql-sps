CREATE DEFINER=`root`@`localhost` PROCEDURE `create_tables`()
BEGIN
	CREATE TABLE `task_list` (
  `id` varchar(36) primary key not null,
  `title` varchar(50) not null
);
commit;

CREATE TABLE `task` (
  `id` varchar(36) primary key not null,
  `taskListId` varchar(36) not null,
  `title` varchar(50) not null,
  `position` integer,
  `notes` varchar(255),
  `due` datetime,
  `completed` datetime,
  `hidden` boolean
);

ALTER TABLE `task` ADD FOREIGN KEY (`taskListId`) REFERENCES `task_list` (`id`);
commit;
END