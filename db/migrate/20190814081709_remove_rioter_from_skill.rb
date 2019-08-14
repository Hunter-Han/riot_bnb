class RemoveRioterFromSkill < ActiveRecord::Migration[5.2]
  def self.down
    remove_column :skills, :rioter
  end
end
