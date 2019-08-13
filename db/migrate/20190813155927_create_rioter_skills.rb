class CreateRioterSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :rioter_skills do |t|
      t.references :rioter, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
