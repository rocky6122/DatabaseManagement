/* Stored procedure cleanup_Address */

use employees;

drop procedure if exists cleanup_Address;
drop procedure if exists cleanup_ErrorAddLog;


delimiter //
create procedure cleanup_Address()
		begin
			delete from Address
            where eaid in (select eaid from ErrorAddLog);
		end

//

delimiter ::
create procedure cleanup_ErrorAddLog()
		begin
			delete from ErrorAddLog;
		end

::
