GETメソッドとPOSTメソッドの違い
  GETもPOSTもデータを送信することができる。
  GETはURLの後ろに送りたいデータを付帯するのでブラウザの閲覧履歴に残ってしまう。
  それに対して、POSTはメッセージボディに内包するので、ブラウザの閲覧履歴には残らない。
  ユーザー情報などを扱う際にはPOSTメソッドを使うことが望ましい。

bundle exec rails routes | grep users
                                  signup GET    /signup(.:format)                                                                                 users#new
                                   users GET    /users(.:format)                                                                                  users#index
                                         POST   /users(.:format)                                                                                  users#create
                                new_user GET    /users/new(.:format)                                                                              users#new
                               edit_user GET    /users/:id/edit(.:format)                                                                         users#edit
                                    user GET    /users/:id(.:format)                                                                              users#show
                                         PATCH  /users/:id(.:format)                                                                              users#update
                                         PUT    /users/:id(.:format)                                                                              users#update
                                         DELETE /users/:id(.:format)                                                                              users#destroy

<%= form_with(url: login_path, scope: :session) do |f| %>

ChromeでCookieを確認する方法
https://qiita.com/pipi0813/items/93e60c605f89f93e49fb

