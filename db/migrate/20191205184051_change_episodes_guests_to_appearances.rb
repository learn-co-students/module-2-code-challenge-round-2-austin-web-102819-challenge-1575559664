class ChangeEpisodesGuestsToAppearances < ActiveRecord::Migration[5.1]
  def change
    rename_table :episodes_guests, :appearances
  end
end
