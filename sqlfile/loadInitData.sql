-- loadInitData.sql
-- Create Users
insert into users_view (first_name, last_name, email, username, password, dep, div)
  values ('admin1','control1','ac1@mail.com','admin1','apassword','ad1','ad1');
insert into users_view (first_name, last_name, email, username, password, dep, div)
  values ('admin2','control2','ac2@mail.com','admin2','apassword','ad2','ad2');
insert into users_view (first_name, last_name, email, username, password, dep, div)
  values ('user1','using1','uu1@mail.com','user1','upassword','dep4','div1');
insert into users_view (first_name, last_name, email, username, password, dep, div)
  values ('user2','using2','uu2@mail.com','user2','upassword','dep3','div2');
insert into users_view (first_name, last_name, email, username, password, dep, div)
  values ('user3','using3','uu3@mail.com','user3','upassword','dep2','div3');
insert into users_view (first_name, last_name, email, username, password, dep, div)
  values ('user4','using4','uu4@mail.com','user4','upassword','dep1','div4');

-- Create Suggestions
insert into suggestions (suggest, created, updated)
  values ('SuggestExample1','2011-03-22 11:29:36.231112','2011-03-27 15:52:56.05206');
insert into suggestions (suggest, created, updated)
  values ('SuggestExample2','2011-03-22 11:29:36.231112','2011-03-27 15:52:56.05206');
insert into suggestions (suggest, created, updated)
  values ('SuggestExample3','2011-03-22 11:29:36.231112','2011-03-27 15:52:56.05206');
insert into suggestions (suggest, created, updated)
  values ('SuggestExample4','2011-03-22 11:29:36.231112','2011-03-27 15:52:56.05206');
insert into suggestions (suggest, created, updated)
  values ('SuggestExample5','2011-03-22 11:29:36.231112','2011-03-27 15:52:56.05206');
insert into suggestions (suggest, created, updated)
  values ('SuggestExample6','2011-03-22 11:29:36.231112','2011-03-27 15:52:56.05206');
insert into suggestions (suggest, created, updated)
  values ('SuggestExample7','2011-03-22 11:29:36.231112','2011-03-27 15:52:56.05206');

-- Create user_suggestion pairs
insert into user_suggestion (user_id, suggestion_id)
  values ('7','1');
insert into user_suggestion (user_id, suggestion_id)
  values ('6','2');
insert into user_suggestion (user_id, suggestion_id)
  values ('5','3');
insert into user_suggestion (user_id, suggestion_id)
  values ('4','4');
insert into user_suggestion (user_id, suggestion_id)
  values ('3','5');
insert into user_suggestion (user_id, suggestion_id)
  values ('2','6');
insert into user_suggestion (user_id, suggestion_id)
  values ('1','7');
