class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :doctor, foreign_key: true
      t.timestamp :appointment_time, :null => false
      t.timestamps
    end
  end
end
