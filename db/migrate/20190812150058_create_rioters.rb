class CreateRioters < ActiveRecord::Migration[5.2]
  def change
    create_table :rioters do |t|
      t.string :name
      t.boolean :availability
      t.float :rate
      t.string :picture
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
