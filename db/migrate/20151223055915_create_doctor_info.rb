class CreateDoctorInfo < ActiveRecord::Migration
  def change
    create_table :doctor_info do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :school
      t.string :years_since_passed
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
