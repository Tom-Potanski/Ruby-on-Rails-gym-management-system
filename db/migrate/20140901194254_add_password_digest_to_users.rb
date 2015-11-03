class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    # S dodanie kolumny do danej tabeli, określenie nazwy kolumny i typu przechowywanych danych
    add_column :users, :password_digest, :string
  end
end
