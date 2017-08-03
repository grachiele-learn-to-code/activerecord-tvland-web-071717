class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(argument)
    self.network = Network.new(argument)
  end

end
