class Customer < ApplicationRecord
  has_one_attached :image

  # Validates that a full name is provided
  validates :full_name, presence: true

  # Defines associations that are allowlisted for searching
  def self.ransackable_associations(auth_object = nil)
    # To exclude all associations from being searchable, return an empty array
    []
  end

  # Defines attributes that are allowlisted for searching
  def self.ransackable_attributes(auth_object = nil)
    # List of attributes you want to be searchable
    %w[full_name phone_number email_address notes created_at updated_at]
  end
end
