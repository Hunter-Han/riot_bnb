class ChangeAvailabilityTypeInRioters < ActiveRecord::Migration[5.2]
  def self.up
    change_column :rioters , :availability, :boolean, default: true, null: false
  end
end
