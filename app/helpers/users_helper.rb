module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  #S spr. czy uż. ma uprawnienia trenera
  def is_coach(user)
    #S zwraca ilość trenerów, którzy mają identyczny adr. email jak użytkownik - pownien być tylko jeden
    c = Coach.where(:email => user.email).count
    return (c == 1)
  end

end
