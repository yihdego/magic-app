class User < ActiveRecord::Base
  include BCrypt
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_hash, presence: true
  has_many :decks

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def create
    @user = User.new(params[:user])
    @user.password = params[:password]
    @user.save!
  end

  def self.login(email, input)
    p '*' * 100
    p email
    @user = User.find_by(email: email)
    if @user && @user.password == input
      @user
    else
      nil
    end
  end

end
