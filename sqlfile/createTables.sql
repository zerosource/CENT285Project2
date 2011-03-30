-- createTables.sql
-- create sequences
drop sequence if exists user_id_seq cascade;
create sequence user_id_seq;
drop sequence if exists suggestion_id_seq cascade;
create sequence suggestion_id_seq;

-- create tables
drop table if exists users cascade;
create table users(
  id integer not null primary key default nextval('user_id_seq'),
  first_name text,
  last_name text,
  email text,
  username text unique,
  password text,
  enc_pass text,
  salt text,
  dep text,
  div text
);
drop table if exists suggestions cascade;
create table suggestions(
  id integer not null primary key default nextval('suggestion_id_seq'),
  suggest text,
  created timestamp,
  updated timestamp
);
drop table if exists user_suggestion cascade;
create table user_suggestion(
  user_id integer references users(id),
  suggestion_id integer references suggestions(id)
);

-- create views
drop view if exists user_suggestion_view cascade;
create view user_suggestion_view as
  select users.id as uid,users.first_name,users.last_name,users.email,users.username,users.dep,users.div,
  suggestions.id as sugid,suggestions.suggest,suggestions.created,suggestions.updated
  from users
  join user_suggestion on users.id=user_suggestion.user_id
  join suggestions on user_suggestion.suggestion_id=suggestions.id;
