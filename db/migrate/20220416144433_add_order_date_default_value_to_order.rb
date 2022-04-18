class AddOrderDateDefaultValueToOrder < ActiveRecord::Migration[7.0]
  def change
    change_column_default :orders, :order_date, -> { 'CURRENT_TIMESTAMP' }
  end
end
