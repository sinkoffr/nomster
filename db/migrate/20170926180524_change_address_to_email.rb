class ChangeAddressToEmail < ActiveRecord::Migration[5.0]
  def change
    rename_column :contacts, :address, :email
  end
end
