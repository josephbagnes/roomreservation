INSERT INTO APPLICATION_PROPERTIES(max_children_per_booking,max_adult_per_booking,entrance_fee_child,entrance_fee_adult,down_payment_percentage,vat_percentage,online_booking_discount,temp_reserve_minutes,grace_period_bank_deposit_hours,email_bank_deposit,bank,account,merchant) VALUES(10,20,100,300,50,20,100,10,48,'hotelabc.reservations@gmail.com','Bank 123 (Any Branch)','00199999555','Hotel ABC Rooms Accommodation');

INSERT INTO ROLE(code,name) VALUES('ROLE_ADMIN','ADMIN');
INSERT INTO ROLE(code,name) VALUES('ROLE_STAFF','STAFF');

INSERT INTO USER(first_name,last_name,user_name,password,status) VALUES('Default ADMIN','ADMIN','admin','$2a$11$AZq/jKbivgqMyAgw9tvHZewCDQroopork6SgrE/UFfaOYtmIH.iCS','A');
INSERT INTO USER(first_name,last_name,user_name,password,status) VALUES('Default STAFF','STAFF','staff','$2a$11$CktRdgq67Idvpryu1wW.sekjo4e2aUbUPxUmaISVnF1JGKiSKLZNO','A');

INSERT INTO USER_ROLES(user_id,roles_id) VALUES(1,1);
INSERT INTO USER_ROLES(user_id,roles_id) VALUES(2,2);

INSERT INTO ROOM_TYPE(name) VALUES('STANDARD');
INSERT INTO ROOM_TYPE(name) VALUES('DELUXE');

INSERT INTO ROOM(name,type,code,capacity,capacity_children,rate,status,description) VALUES('Room A','STANDARD','3STA1',3,1,500.00,'A','1 queen size bed w/ upper deck and air-conditioning');
INSERT INTO ROOM(name,type,code,capacity,capacity_children,rate,status,description) VALUES('Room B','STANDARD','3STA2',3,1,500.00,'A','1 queen size bed w/ upper deck and air-conditioning');

INSERT INTO ROOM(name,type,code,capacity,capacity_children,rate,status,description) VALUES('Deluxe Room A','DELUXE','5DEL1',5,2,1000.00,'A','2 queen size beds and air-conditioning');
INSERT INTO ROOM(name,type,code,capacity,capacity_children,rate,status,description) VALUES('Deluxe Room B','DELUXE','5DEL2',5,2,1500.00,'A','2 queen size beds, bathroom and air-conditioning');

INSERT INTO MISCELLANEOUS(code,name,rate) VALUES('MISC_BILL','Billiards',100);
INSERT INTO MISCELLANEOUS(code,name,rate) VALUES('MISC_LAUN','Laundry',10);