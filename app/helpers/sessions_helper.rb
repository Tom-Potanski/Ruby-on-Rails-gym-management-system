#A: MS
# Projekt indywidualny,
# Małgorzata Szwed
# 2 rok
# Nr indeksu: 69826
# Elektroniczny system obsługi siłowni: Twoja siłownia, online
# 16 września 2014
#
# Plik został zmodyfikowany/utworzony na cele uczelniane/potrzeby projektu.
module SessionsHelper

  #S helper opisujący logowanie uż. w sesji
  def sign_in(user)
    remember_token = User.new_remember_token
    #S ustawienie ciasteczka
    cookies.permanent[:remember_token] = remember_token
    #S aktualizacja ciasteczka
    user.update_attribute(:remember_token, User.digest(remember_token))
    self.current_user = user
  end


  def signed_in?
    !current_user.nil?
  end

  #S wylogowanie uż. z sesji
  def sign_out
    #S akt. ciasteczka
    current_user.update_attribute(:remember_token,
                                  User.digest(User.new_remember_token))
    cookies.delete(:remember_token)
    self.current_user = nil
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    remember_token = User.digest(cookies[:remember_token])
    @current_user ||= User.find_by(remember_token: remember_token)
  end

end
