class ChangeTypeToTypeIdForTerm < ActiveRecord::Migration[7.0]
  def change
    remove_column :terms, :type
    add_column :terms, :type_id, :integer
  end
end
