class ChangePhoneNumber < ActiveRecord::Migration[6.1]
  def change
    change_column :suppliers, :phone_number, :string
  end
end
