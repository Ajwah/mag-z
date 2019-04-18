class CreateAdds < ActiveRecord::Migration[5.2]
  def change
    create_table :adds do |t|
      t.string :Adds
      t.string :content
      t.string :brand
      t.references :magazine, foreign_key: true

      t.timestamps
    end
  end
end
