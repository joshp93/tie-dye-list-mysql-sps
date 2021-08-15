CREATE DEFINER=`root`@`localhost` PROCEDURE `get_tasks`(pTaskListId varchar(36))
BEGIN
	if pTaskListId = null then
		select * from task;
    else
		select * from `task`
        where taskListId = pTaskListId;
	end if;
END