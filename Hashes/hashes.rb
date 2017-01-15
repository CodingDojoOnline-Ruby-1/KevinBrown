# Hash Challenge from Learning PLatform

x = {"first_name" => "Coding", "last_name" => "Dojo"}

puts "====== Begin Platform Hashes ======"
puts

puts x["first_name"] , x["last_name"]
puts "Your last name is Dojo" if x["last_name"].eql? "Dojo"
puts

y = {:first_name => "Coding", :last_name => "Dojo"}
puts "Y is ", y
puts y[:first_name], y[:last_name]
puts

puts "Deleting :first_name"
y.delete(:first_name)
puts "Y is now", y
puts

if y.has_key?(:first_name)
    puts "Y has a key called :first_name"
else
    puts "Y does not have a key called :first_name"
end

if y.has_value?("Dojo")
    puts "Y has a value called Dojo"
else
    puts "Y does NOT have a value called Dojo"
end
puts
puts "===== Begin Hash Challenge ====="
puts

h = {:first_name => "Coding", :last_name => "Dojo"}

puts "h is ", h
h.delete(:last_name)
puts "Now h is now ", h
puts

puts "Is h now empty?", h.empty?
puts "Is the last_name key still there?", h.has_key?("last_name")
puts "Is Dojo in h?", h.has_value?("Dojo")
puts "Is Coding in h?", h.has_value?("Coding")
puts
puts "======= End of Code ======="
