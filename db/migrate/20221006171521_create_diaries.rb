class CreateDiaries < ActiveRecord::Migration[7.0]
  def change
    create_table :diaries do |t|
      t.text :entry
      t.text :comment

      t.timestamps
    end
  end
end
