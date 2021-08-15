CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_task_list`(pId varchar(36), pTitle varchar(50))
BEGIN
	set @Exists = `check_task_tables_exist`();
    if @Exists = 0 then
		call create_tables();
    end if;
    
	INSERT INTO `task_list` (
	`id`,
	`title`
	) VALUES (
		pId,
		pTitle
	);
	select * from task_list
	where id = pId;
END