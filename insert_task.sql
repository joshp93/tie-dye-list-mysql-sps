CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_task`(pId varchar(36), pTaskListId varchar(36), pTitle varchar(50), pPosition integer, pNotes varchar(255), pDue datetime, pCompleted datetime, pHidden boolean)
BEGIN
	INSERT INTO `task` (
		`id`,
		`taskListId`,
		`title`,
		`position`,
		`notes`,
		`due`,
		`completed`,
		`hidden`
	) VALUES (
		pId,
		pTaskListId,
		pTitle,
		pPosition,
		pNotes,
		pDue,
		pCompleted,
		pHidden
	);
	select * from task
	where id = pId;
END