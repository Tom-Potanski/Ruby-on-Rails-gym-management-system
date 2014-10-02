#A: MS
# Projekt indywidualny,
# Małgorzata Szwed
# 2 rok
# Nr indeksu: 69826
# Elektroniczny system obsługi siłowni: Twoja siłownia, online
# 16 września 2014
#
# Plik został zmodyfikowany/utworzony na cele uczelniane/potrzeby projektu.

class SessionsController < ApplicationController

  def new
  end

  def create
    #S szukamy użytkownika po jego adresie email zmienionym na male litery
    user = User.find_by(email: params[:session][:email].downcase)
    #S sprawdzenie, czy zmienna user nie jest pusta i czy autoidentyfikacja przebiegła poprawnie
    if user && user.authenticate(params[:session][:password])
      # Sign the user in and redirect to the user's show page.
      sign_in user
      redirect_to user
    else
      #S wyświetlenie informacji o błędzie
      flash.new[:error] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

end
