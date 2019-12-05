class CreateJoinTableAppearances < ActiveRecord::Migration[5.1]
  def change
    create_join_table :episodes, :guests, table_name: :appearances do |t|
      # t.index [:episode_id, :guest_id]
      # t.index [:guest_id, :episode_id]
    end
  end
end
