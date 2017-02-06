class CreateWordClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :word_classes do |t|
      t.string :category
      t.text :defination

      t.timestamps
    end
  end
end
