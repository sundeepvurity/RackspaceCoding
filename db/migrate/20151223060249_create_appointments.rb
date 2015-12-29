class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :customer_id
      t.integer :doctor_id
      t.datetime :visit_date
      t.string :pet
      t.boolean :reminder
      t.text :reason_for_visit

      t.timestamps null: false
    end
  end
end
