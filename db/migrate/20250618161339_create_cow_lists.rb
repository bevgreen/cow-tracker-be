class CreateCowLists < ActiveRecord::Migration[7.1]
  def change
    create_table :cow_lists do |t|
      t.references :cow, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
