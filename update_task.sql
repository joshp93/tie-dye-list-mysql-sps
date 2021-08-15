CREATE DEFINER=`root`@`localhost` PROCEDURE `update_task`(pId varchar(36), pTaskListId varchar(36), pTitle varchar(50), pPosition integer, pNotes varchar(255), pDue datetime, pCompleted datetime, pHidden boolean)
BEGIN
	update `task` 
    set 
	taskListId = pTaskListId,
	title = pTitle,
	position = pPosition,
	notes = pNotes,
	due = pDue,
	completed = pCompleted,
	hidden = pHidden
	where id = pId;
    
	select * from task
	where id = pId;
END