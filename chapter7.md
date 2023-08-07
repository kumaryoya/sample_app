irb(main):018:0> user = User.find(1)
  User Load (0.3ms)  SELECT "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
/Users/ryoyaokuma/workspace/runteq/sample_app/vendor/bundle/ruby/3.1.0/gems/activerecord-7.0.4/lib/active_record/core.rb:284:in `find': Couldn't find User with 'id'=1 (ActiveRecord::RecordNotFound)
irb(main):019:0> puts user.attributes.to_yaml
---
id: 1
name: aaa
email:
created_at: !ruby/object:ActiveSupport::TimeWithZone
  utc: &1 2023-08-07 17:03:05.938769000 Z
  zone: &2 !ruby/object:ActiveSupport::TimeZone
    name: Etc/UTC
  time: 2023-08-07 17:03:05.938769000 Z
updated_at: !ruby/object:ActiveSupport::TimeWithZone
  utc: *1
  zone: *2
  time: 2023-08-07 17:03:05.938769000 Z
password_digest: "$2a$12$Tque6KxEj2.KSx0K5Ah55Ojhi0RcL6zTwHEWtBUAzDXu5lzlkTPPu"
=> nil
irb(main):020:0> y user.attributes
---
id: 1
name: aaa
email:
created_at: !ruby/object:ActiveSupport::TimeWithZone
  utc: &1 2023-08-07 17:03:05.938769000 Z
  zone: &2 !ruby/object:ActiveSupport::TimeZone
    name: Etc/UTC
  time: 2023-08-07 17:03:05.938769000 Z
updated_at: !ruby/object:ActiveSupport::TimeWithZone
  utc: *1
  zone: *2
  time: 2023-08-07 17:03:05.938769000 Z
password_digest: "$2a$12$Tque6KxEj2.KSx0K5Ah55Ojhi0RcL6zTwHEWtBUAzDXu5lzlkTPPu"
=> nil

<%= @user.name %>, <%= @user.email %>, <%= @user.created_at %>, <%= @user.updated_at %>

<%= Time.now %>

(ruby) puts params.to_yaml
--- !ruby/object:ActionController::Parameters
parameters: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
  controller: users
  action: show
  id: '1'
permitted: false
nil

(ruby) @user
nil

