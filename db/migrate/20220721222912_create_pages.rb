class CreatePages < ActiveRecord::Migration[7.0]
  def up
    drop_table :pages
  end
end
