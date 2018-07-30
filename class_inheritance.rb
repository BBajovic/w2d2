class Employee

  attr_accessor :name, :title, :salary, :boss

  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
    @boss = nil
  end

  def bonus(multiplier)
    salary * multiplier
  end

end

class Manager < Employee

  attr_accessor :subordinates

  def initialize(name, title, salary)
    super
    @subordinates = []
  end

  def bonus(multiplier)
    sal_arr = subordinates.map {|emp| emp.salary }

    sal_arr.reduce(:+) * multiplier
  end

  def add_subordinates(employee)
    subordinates << employee
    employee.boss = self
  end

end

shawna = Employee.new("Shawna", "TA", 12000)
david = Employee.new("David", "TA", 10000)
darren = Manager.new("Darren", "TA Manager", 78000)
ned = Manager.new("Ned", "Founder", 1000000)

darren.add_subordinates(david)
