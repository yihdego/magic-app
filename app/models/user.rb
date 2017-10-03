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

  def login(email, password)
    @user = User.find_by_email(email)
    if @user.password == password
      @user
    else
      nil
    end
  end

end
