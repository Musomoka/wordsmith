class CreateDialects < ActiveRecord::Migration[5.0]
  def change
    create_table :dialects do |t|
      t.string :dialect_name
      t.text :description
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
