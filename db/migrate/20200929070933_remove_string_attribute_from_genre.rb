class RemoveStringAttributeFromGenre < ActiveRecord::Migration[6.0]
  def change
    remove_column :genres, :string, :string
  end
end
