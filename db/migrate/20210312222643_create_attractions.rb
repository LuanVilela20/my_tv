class CreateAttractions < ActiveRecord::Migration[6.1]
  def change
    create_table :attractions do |t|
      t.string :attraction_name
      t.string :description
      t.datetime :transmission_date
      t.references :kind, null: false, foreign_key: true
      t.references :channel, null: true, foreign_key: true
      t.references :medium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
