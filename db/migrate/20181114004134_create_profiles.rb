class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :profilable, polymorphic: true, null: true
      t.boolean :license, index: true
      t.string :city, index: true
      t.string :gender, index: true
      t.integer :age, index: true
      t.integer :min_age, index: true
      t.integer :max_age, index: true
      t.timestamps
      t.index [:license, :city, :gender, :age, :min_age, :max_age],
        name: "profile_composite_index"
    end
  end
end
