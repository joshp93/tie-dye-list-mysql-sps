CREATE DEFINER=`root`@`localhost` PROCEDURE `get_task`(pId varchar(36))
BEGIN
	select * from `task`
	where id = pId
    limit 0, 1;
END