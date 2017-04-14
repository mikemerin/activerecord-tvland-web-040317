require 'pry'

class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    [self.first_name,last_name].join(" ")
  end

  def list_roles
    self.characters.map do |char|
      [char.name,char.show.name].join(" - ")
    end
  end

end
