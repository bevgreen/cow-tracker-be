class CreateCows < ActiveRecord::Migration[7.1]
  def change
    create_table :cows do |t|
      t.string :ear_tag_number, null: false, index: { unique: true }
      t.string :nickname
      t.date :birthday
      t.boolean :pregnant
      t.date :due_date
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
