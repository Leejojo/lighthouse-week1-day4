def benchmark
  # Your benchmarking code goes here.
  start_time = Time.now
  yield

  end_time = Time.now

  puts @duration = end_time - start_time

end
 
# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000
 
benchmark { long_string.reverse }
 
puts "string.reverse took #{@duration} seconds to run"