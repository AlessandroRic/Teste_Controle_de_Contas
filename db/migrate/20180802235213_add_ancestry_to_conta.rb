class AddAncestryToConta < ActiveRecord::Migration
  def change
    add_column :conta, :ancestry, :string, after: :pessoa_id
    add_index :conta, :ancestry
  end
end
