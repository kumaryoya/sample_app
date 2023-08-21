irb(main):002:0> user = User.first
  User Load (0.1ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
=>
#<User:0x0000000107e27e28
...
irb(main):003:0> user
=>
#<User:0x0000000107e27e28
 id: 1,
 name: "Example User",
 email: "example@railstutorial.org",
 created_at: Mon, 07 Aug 2023 18:21:03.828980000 UTC +00:00,
 updated_at: Thu, 10 Aug 2023 12:26:08.196557000 UTC +00:00,
 password_digest: "[FILTERED]",
 remember_digest: nil>
irb(main):004:0> user.remember
  TRANSACTION (0.1ms)  begin transaction
  User Update (0.6ms)  UPDATE "users" SET "updated_at" = ?, "remember_digest" = ? WHERE "users"."id" = ?  [["updated_at", "2023-08-21 19:31:03.224091"], ["remember_digest", "$2a$12$GNIYTQIgLzCm7Lp3Z/NpBewA3rQjGwCO52lVavMf5sTi323wFhyBG"], ["id", 1]]
  TRANSACTION (1.4ms)  commit transaction
=> true
irb(main):005:0> user.remember_token
=> "PT9C4Iw9IXhtKmWYbJL5vA"
irb(main):006:0> user.remember_digest
=> "$2a$12$GNIYTQIgLzCm7Lp3Z/NpBewA3rQjGwCO52lVavMf5sTi323wFhyBG"

