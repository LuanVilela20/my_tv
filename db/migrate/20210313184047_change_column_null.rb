class ChangeColumnNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :attractions, :channel_id, true
  end
end
