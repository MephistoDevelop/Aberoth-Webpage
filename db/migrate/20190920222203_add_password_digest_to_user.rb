# frozen_string_literal: true

class AddPasswordDigestToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :password_digest, :string
  end
end
