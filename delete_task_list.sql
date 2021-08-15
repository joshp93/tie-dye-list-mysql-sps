CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_task_list`(pId varchar(36))
BEGIN
	delete from task
    where taskListId = pId;
    commit;
	
	delete from `task_list`
	where id = pId;
END