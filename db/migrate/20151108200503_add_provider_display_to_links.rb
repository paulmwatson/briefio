class AddProviderDisplayToLinks < ActiveRecord::Migration
  def change
    add_column :links, :provider_display, :string
  end
end
