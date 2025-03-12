require "sinatra"
require "sinatra/reloader"
require "better_errors"

# Redirect root to /add
get("/") do
  redirect("/add")
end

# Addition Routes
get("/add") do
  erb(:add_form)
end

post("/wizard_add") do
  @first_num = params.fetch("first_number").to_f
  @second_num = params.fetch("second_number").to_f
  @result = @first_num + @second_num
  erb(:add_result)
end

# Subtraction Routes
get("/subtract") do
  erb(:sub_form)
end

post("/wizard_subtract") do
  @first_num = params.fetch("first_number").to_f
  @second_num = params.fetch("second_number").to_f
  @result = @first_num - @second_num
  erb(:sub_result)
end

# Multiplication Routes
get("/multiply") do
  erb(:multiplication_form)
end

post("/wizard_multiply") do
  @first_num = params.fetch("first_number").to_f
  @second_num = params.fetch("second_number").to_f
  @result = @first_num * @second_num
  erb(:mult_result)
end

# Division Routes
get("/divide") do
  erb(:div_form)
end

post("/wizard_divide") do
  @first_num = params.fetch("first_number").to_f
  @second_num = params.fetch("second_number").to_f
  if @second_num == 0
    @result = "Cannot divide by zero"
  else
    @result = @first_num / @second_num
  end
  erb(:div_result)
end
