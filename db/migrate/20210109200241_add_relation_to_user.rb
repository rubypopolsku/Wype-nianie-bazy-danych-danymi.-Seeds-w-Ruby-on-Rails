class AddRelationToUser < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :posts, :user, foreign_key: true
    add_belongs_to :comments, :user, foreign_key: true

    remove_column :comments, :author, :string
  end
end
