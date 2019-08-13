class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :rioter, foreign_key: true
      t.datetime :start
      t.datetime :end
      t.string :location

      t.timestamps
    end
  end
end
