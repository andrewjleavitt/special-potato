class AddSecurePassowrdToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :email, :string
    add_column :coaches, :password_digest, :string
  end
end
