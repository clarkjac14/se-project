class AddAttbrToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :admin, :boolean,  default: false
  end
end
