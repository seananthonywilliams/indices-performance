class AddIndexToReviews < ActiveRecord::Migration
  def self.up
    add_index :reviews, :movie_id, :name=>'movie_index'
    add_index :reviews, :moviegoer_id, :name=>'moviegoer_index'
  end

  def self.down
    remove_index :reviews, 'movie_index'
    remove_index :reviews, 'moviegoer_index'
  end
end
