class AddPaidHolidayUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :paid_leave_hours, :integer
  end
end
