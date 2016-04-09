require 'date'

class Projects

  def initialize
    @projects_this_year = {}
  end

  def add_project(name,date,yardage)
    @name = name
    @date = date
    @yardage = yardage
    if @date.year == 2016
      @projects_this_year[@name] = @yardage
    end
  end

  def yardage_calc
    i = 0
    @projects_this_year.each do |name, yards|
      i += yards
    end
    puts "Total yardage knit this year: #{i}"
  end

  def pretty_list
    @projects_this_year.each do |name,yards|
      puts "#{name}: #{yards} yards"
    end
  end

end

my_projects = Projects.new
my_projects.add_project("Woodland Wonders Sweater", Date.new(2016,5,1), 2000)
my_projects.add_project("Rhinebeck Socks", Date.new(2016,3,19), 350)
my_projects.add_project("Stormy Weather Socks", Date.new(2016,2,13), 320)
my_projects.add_project("House Cup Socks", Date.new(2016,4,10), 320)
my_projects.add_project("Cabled Hat", Date.new(2016,1,15), 300)
my_projects.yardage_calc
my_projects.pretty_list
