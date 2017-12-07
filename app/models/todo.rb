class Todo < ApplicationRecord
  ## Associations
  belongs_to :user

  ## Validations
  validates :content, presence: true

  ## Callbacks
  before_create :prepare_defaults

  private

  ## Methods
  def prepare_defaults
    self.completed = false if completed.nil?
  end
end
