class AddIndexWordClassToDictionary < ActiveRecord::Migration[5.0]
  def change
    add_reference :dictionaries, :word_class, foreign_key: true
  end
end
