class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

  def what_am_i
    puts "I'm an employee!"
  end
end

employee1 = Employee.new({ first_name: "Majora", last_name: "Carter", salary: 80000, active: true })
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info

class Manager < Employee
  attr_reader :employees

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end

  def give_all_raises
    @employees.each do |employee|
      old_salary = employee.salary
      employee.give_annual_raise
      puts "#{employee.first_name} #{employee.last_name} gets a raise of $#{employee.salary - old_salary}."
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = (false)
      puts "Bye #{employee.first_name} /:"
    end
    puts "Srry not srry, ya'll gettin' fired..."
  end

  def what_am_i
    super
    puts "I'm also a manager!"
  end
end

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
# manager.print_info
# manager.send_report
p manager.employees
manager.give_all_raises
manager.fire_all_employees
employee1.what_am_i
manager.what_am_i
