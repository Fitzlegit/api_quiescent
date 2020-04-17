class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :why
      t.string :meditations

      t.timestamps
    end
  end
end
