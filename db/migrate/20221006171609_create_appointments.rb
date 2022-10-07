class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.text :summary
      t.text :question

      t.timestamps
    end
  end
end
