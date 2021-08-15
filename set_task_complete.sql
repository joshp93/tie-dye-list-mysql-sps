CREATE DEFINER=`root`@`localhost` PROCEDURE `set_task_complete`(pId varchar(36), pComplete boolean)
BEGIN
	update task
    set completed = sysdate(), hidden = pComplete
    where id = pId;
END