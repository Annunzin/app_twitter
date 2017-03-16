class AddUserToTwaats < ActiveRecord::Migration[5.0]
  def change
    add_reference :twaats, :user, foreign_key: true
  end
end
