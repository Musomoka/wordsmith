class CreateLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :languages do |t|
      t.string :name
      t.string :description
      t.string :country
      t.string :dialect

      t.timestamps
    end
  end
end
