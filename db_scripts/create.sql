create table additional_charge (id integer generated by default as identity, item_description varchar(255), rate double not null, primary key (id))
create table application_properties (id integer generated by default as identity, account varchar(255), bank varchar(255), change_date timestamp, down_payment_percentage integer not null, email_bank_deposit varchar(255), entrance_fee_adult double not null, entrance_fee_child double not null, grace_period_bank_deposit_hours integer not null, max_adult_per_booking integer not null, max_children_per_booking integer not null, merchant varchar(255), online_booking_discount double not null, temp_reserve_minutes integer not null, vat_percentage integer not null, primary key (id))
create table guest (id integer generated by default as identity, contact_number varchar(255), email varchar(255), first_name varchar(255), last_name varchar(255), primary key (id))
create table miscellaneous (id integer generated by default as identity, code varchar(255), description varchar(250), name varchar(255), rate double not null, primary key (id))
create table reservation (id integer generated by default as identity, balance_upon_checkout double not null, booking_date timestamp, check_in timestamp, check_out timestamp, count_adult integer not null, count_children integer not null, dp_amount double not null, email varchar(255), num_of_nights integer not null, online_booking_discount double not null, payment_method varchar(255), real_check_out timestamp, reference_id varchar(255), remarks varchar(255), status varchar(255), sum_of_room_rate double not null, total_amount double not null, total_amount_rooms double not null, type varchar(255), vat_amount double not null, main_guest_id integer, primary key (id))
create table reservation_additional_charges (reservation_id integer not null, additional_charges_id integer not null)
create table reservation_rooms (reservation_id integer not null, rooms_id integer not null)
create table role (id integer generated by default as identity, code varchar(255), description varchar(255), name varchar(255), primary key (id))
create table room (id integer generated by default as identity, capacity integer not null, capacity_children integer not null, code varchar(255), description varchar(250), name varchar(255), rate double not null, status varchar(255), type varchar(255), primary key (id))
create table room_type (id integer generated by default as identity, name varchar(255), primary key (id))
create table user (id integer generated by default as identity, contact_number varchar(255), email varchar(255), first_name varchar(255), last_name varchar(255), password varchar(60), status varchar(255), user_name varchar(255), primary key (id))
create table user_roles (user_id integer not null, roles_id integer not null)
alter table reservation_additional_charges add constraint UK_orpd5qefp2khcfw904f3wu1t6 unique (additional_charges_id)
alter table reservation add constraint FK11om6qsmuqin9298xxgwcyali foreign key (main_guest_id) references guest
alter table reservation_additional_charges add constraint FK927gvw75y26wfc1w9d10n6qg6 foreign key (additional_charges_id) references additional_charge
alter table reservation_additional_charges add constraint FKjrrcgulf4vu3yvo1m63eba5ug foreign key (reservation_id) references reservation
alter table reservation_rooms add constraint FK3909f3xr1eghx60b7q08nsobj foreign key (rooms_id) references room
alter table reservation_rooms add constraint FKruieejln87l05fn90ykdy9d2 foreign key (reservation_id) references reservation
alter table user_roles add constraint FKj9553ass9uctjrmh0gkqsmv0d foreign key (roles_id) references role
alter table user_roles add constraint FK55itppkw3i07do3h7qoclqd4k foreign key (user_id) references user