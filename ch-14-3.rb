$nest_counter = 0
def log description, &block
  puts "  " * $nest_counter + "start of: #{description}"
  $nest_counter += 1
  result = block[]
  $nest_counter += -1
  puts "  " * $nest_counter + "end of: #{description} result: #{result}"
end

log "outer example" do
  "first level"
  log "inner example" do
    1+1
    log "3rd level example" do
      "2nd level"
    end
  end
end