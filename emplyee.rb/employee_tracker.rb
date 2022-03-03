class EmployeeTracker
  def initialize
    @running = true
    @employee_list = []
    while @running == true
      puts "[C]reate [R]ead [U]pdate [D]elete [Q]uit:"
      input = gets.chomp
      if input.downcase == "q"
        quit
      elsif input.downcase == "c"
        create
      elsif read
      end
    end
  end

  def quit
    @running = false
  end

  def create
    puts "First Name:"
    first_name = gets.chomp
    puts "Last Name:"
    last_name = gets.chomp
    puts "Salary:"
    salary = gets.chomp
    @employee_list << { :first_name => first_name, :last_name => last_name, :salary => salary, :active => true }
  end

  def read
    puts "Employee ID:"
    id = gets.chomp
    puts @employee_list[id.to_i - 1]
  end

  def update
    "Employee ID:"
    id = gets.chomp
    puts "Employee #{id} active status (#{@employee_list[id.to_i - 1][:active]})"
    if
  end
end

app = EmployeeTracker.new
