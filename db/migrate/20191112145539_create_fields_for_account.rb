class CreateFieldsForAccount < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :name, :string, :limit => 30
    add_column :accounts, :street, :string, :limit => 30
    add_column :accounts, :zip_code, :integer
    add_column :accounts, :city, :string, :limit => 30
    add_column :accounts, :user_id, :integer
  end
end
