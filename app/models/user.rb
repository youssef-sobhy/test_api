class User < ApplicationRecord
  ## Enums
  enum gender: { male: 'male', female: 'female' }

  ## Associations
  has_many :todos, dependent: :destroy

  ## Validations
  has_secure_password
  validates :name, :email, :age, :gender, presence: true
  validates :gender, inclusion: { in: genders.keys }
  validates :email, email_format: { message: 'Invalid email!' }

  ## Callbacks
  before_create :prepare_defaults

  private

  def prepare_defaults
    return unless profile_picture.nil?
    self.profile_picture = if male?
                             'http://vvcexpl.com/wordpress/wp-content/uploads/2013/09/profile-default-male.png'
                           else
                             'http://www.thesynergysearchgroup.com/images/Demetra.jpg'
                           end
  end
end
