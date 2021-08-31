require "pry"
katz_deli=[]
  
def line queue_array 
 if queue_array.empty?
    puts "The line is currently empty."
#   binding.pry
 else
    current_line="The line is currently:"
    queue_array.map.with_index(1) do |name,current_place|
    current_line<<" #{current_place}. #{name}"
    end
  puts current_line
 end
end

def take_a_number current_line,new_customer
 current_line<<new_customer
 current_line.map.with_index(1) do |current_name,current_place|
  if current_name==new_customer
   puts "Welcome, #{current_name}. You are number #{current_place} in line."
  end
 end
end

def now_serving current_line
    if current_line.empty?
    puts "There is nobody waiting to be served!"
    else
    current_customer=current_line.shift
    puts "Currently serving #{current_customer}."
    end
end
