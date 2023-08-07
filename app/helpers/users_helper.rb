module UsersHelper
  def gravatar_for(user)
    if user.email.present?
      gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
      gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
      image_tag(gravatar_url, alt: user.name, class: "gravatar")
    else
      # エラー処理または代替のコードを記述
      # 例: "Gravatar not available" のようなメッセージを表示
    end
  end
end