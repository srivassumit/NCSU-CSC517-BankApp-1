class AddDefaultValueToAccountAttribute < ActiveRecord::Migration[5.0]
  def change
    change_column :accounts, :balance, :decimal, :default => 0
  end
end
