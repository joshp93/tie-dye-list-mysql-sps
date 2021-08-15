CREATE DEFINER=`root`@`localhost` PROCEDURE `update_task_list`(pId varchar(36), pTitle varchar(50))
BEGIN
	update task_list
    set title = pTitle
    where id = pId;
    
	select * from task_list
	where id = pId;
END