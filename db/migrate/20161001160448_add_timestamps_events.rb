class AddTimestampsEvents < ActiveRecord::Migration[5.0]
  def change_table
    add_timestamps(:events)
  end
end
