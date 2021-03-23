class UserRegistrationForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name, :string
  attribute :address, :string

  validates :name, presence: true
  validates :address, presence: true

  def save
    return false if invalid?

    user.save!
    true
  end

  def user
    @user ||= User.new(name: name, address: address)
  end
end
