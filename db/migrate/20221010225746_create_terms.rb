class CreateTerms < ActiveRecord::Migration[7.0]
  def change
    create_table :terms do |t|
      t.string :name
      t.text :what
      t.text :why
      t.text :how
      t.text :example
      t.string :type

      t.timestamps
    end
  end
end
