create database product_management_orm;
drop database product_management_orm;
use product_management_orm;
delimiter //
create procedure delete_category(in inputCategory_Id long)
begin
update products set category_id = null where category_id = inputCategory_Id;
delete from categories where id = inputCategory_Id;
end //
delimiter ;