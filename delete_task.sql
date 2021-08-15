CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_task`(pId varchar(36))
BEGIN
	delete from `task`
	where id = pId;
END