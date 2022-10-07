class CreateInstances < ActiveRecord::Migration[7.0]
  def change
    create_table :instances do |t|
      t.text :milestone
      t.text :medication
      t.string :results
      t.belongs_to :intended_parent, null: false, foreign_key: true
      t.belongs_to :gestational_carrier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
