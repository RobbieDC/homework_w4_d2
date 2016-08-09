DROP TABLE shoos;

CREATE TABLE shoos (
  id serial4 primary key,
  first_name varchar(255),
  last_name varchar(255),
  street_address varchar(255),
  town varchar(255),
  postcode varchar(255),
  quantity int2,
  size int2
);