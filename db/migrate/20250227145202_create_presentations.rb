class CreatePresentations < ActiveRecord::Migration[7.1]
  def change
    create_table :presentations do |t|
      t.references :screen, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
