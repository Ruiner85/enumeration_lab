class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def has_planets
    @planets.count
  end

  def planet_names
    expected_names = @planets.map {|planet| planet.name}
  end

  def get_planet_by_name(name)
    @planets.find {|planet| planet.name == name}
  end

  def get_largest_planet
    @planets.max_by {|planet| planet.diameter}
  end

  def get_smallest_planet
    @planets.min_by {|planet| planet.diameter}
  end

  def get_planets_with_no_moons
    @planets.find_all {|planet| planet.number_of_moons == 0}
  end

  def get_planets_with_more_moons(number)
    expected = @planets.find_all {|planet| planet.number_of_moons > number}
    expected.map {|planet| planet.name}
  end

  def get_number_of_planets_closer_than(number)
    answer = @planets.find_all {|planet| planet.distance_from_sun < number}
    answer.map {|planet| planet.name}.count
  end
end
