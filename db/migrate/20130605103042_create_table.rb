class CreateTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, :last_name, :email, :password
    end
  end
end
