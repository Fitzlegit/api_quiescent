class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :fullname
      t.text :why
      t.string :meditations
      t.references :user
      t.timestamps
    end
  end
end
