class Puppy

  @@all = []

  attr_reader :breed
  attr_accessor :name, :months_old

  def initialize(params)
    @name = params[:name]
    @breed = params[:breed]
    @months_old = params[:age]
    @@all << self
  end

  def self.all
    @@all
  end

end
