class Invite < ActiveRecord::Base
  attr_accessible :invite, :status

  validates_uniqueness_of :invite

  def initialize
    super
    self.invite = (0...8).map{(65+rand(26)).chr}.join
  end
end
