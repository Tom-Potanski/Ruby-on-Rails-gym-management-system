class User < ActiveRecord::Base
  #S to zostanie wykonane automatycznie przed zapis. rekordu - normalizuje email, aby zaw. tylko lower_case
  before_save { self.email = email.downcase }
  #S analogicznie - przed utowżeniem
  before_create :create_remember_token
  #S sprawdzamy nazwisko pod kontem obecności i długości
  validates :name, presence: true, length: { maximum: 50 }
  #S wyr. regularne opisujące poprawny email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
            format:     { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  # skrót standardowy dla RoR dodający bardzo dużo wymagać powiązanych z polem password (hasło) związanych z bezpieczeństwem
  has_secure_password
  validates :password, length: { minimum: 6 }

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  has_many :activity_records, dependent: :destroy
  has_many :activity_record2s, dependent: :destroy

  private

  def create_remember_token
    self.remember_token = User.digest(User.new_remember_token)
  end

end


