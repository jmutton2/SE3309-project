drop function  getCartNo;
delimiter //
CREATE FUNCTION getCartNo (cartType varchar(1), train bigint)
RETURNS bigint deterministic
if (cartType = 'l') THEN
return (SELECT count(*) from cart_locamotive where trainNo = train);

else
if (cartType = 't') THEN
return (SELECT count(*) from cart_transport where trainNo = train);

else
if (cartType = 'c') THEN
return (SELECT count(*) from cart_passenger_cabins where trainNo = train);
else
if (cartType = 's') THEN
return (SELECT count(*) from cart_passenger_seats where trainNo = train);
end if;
END if;
end if;
end if;
//
