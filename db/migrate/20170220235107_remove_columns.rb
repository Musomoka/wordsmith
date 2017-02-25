class RemoveColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :languages, :dialect
  end
end
