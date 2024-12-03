require 'sinatra'
require 'sinatra/reloader' if development?

# Sample data for tasks (in-memory storage for simplicity)
tasks = [
  { id: 1, title: "Learn Ruby", completed: false },
  { id: 2, title: "Build a web app", completed: false }
]

# Display the list of tasks
get '/' do
  @tasks = tasks
  erb :index
end

# Route for adding a new task
get '/new' do
  erb :new_task
end

post '/add' do
  new_task = {
    id: tasks.length + 1,
    title: params[:title],
    completed: false
  }
  tasks << new_task
  redirect '/'
end

# Route for marking a task as completed
post '/complete/:id' do
  task_id = params[:id].to_i
  task = tasks.find { |t| t[:id] == task_id }
  task[:completed] = true if task
  redirect '/'
end



# require 'sinatra'
# require 'sinatra/reloader' if development?

# # Sample data for tasks (in-memory storage for simplicity)
# tasks = [
#   { id: 1, title: "Learn Ruby", completed: false },
#   { id: 2, title: "Build a web app", completed: false }
# ]

# # Display the list of tasks
# get '/' do
#   @tasks = tasks
#   erb :index
# end
# require 'sinatra'
# require 'sinatra/reloader' if development?

# # Sample data for tasks (in-memory storage for simplicity)
# tasks = [
#   { id: 1, title: "Learn Ruby", completed: false },
#   { id: 2, title: "Build a web app", completed: false }
# ]

# # Display the list of tasks
# get '/' do
#   @tasks = tasks
#   erb :index
# end
# require 'sinatra'
# require 'sinatra/reloader' if development?

# # Sample data for tasks (in-memory storage for simplicity)
# tasks = [
#   { id: 1, title: "Learn Ruby", completed: false },
#   { id: 2, title: "Build a web app", completed: false }
# ]

# # Display the list of tasks
# get '/' do
#   @tasks = tasks
#   erb :index
# end
# require 'sinatra'
# require 'sinatra/reloader' if development?

# # Sample data for tasks (in-memory storage for simplicity)
# tasks = [
#   { id: 1, title: "Learn Ruby", completed: false },
#   { id: 2, title: "Build a web app", completed: false }
# ]

# # Display the list of tasks
# get '/' do
#   @tasks = tasks
#   erb :index
# end
# require 'sinatra'
# require 'sinatra/reloader' if development?

# # Sample data for tasks (in-memory storage for simplicity)
# tasks = [
#   { id: 1, title: "Learn Ruby", completed: false },
#   { id: 2, title: "Build a web app", completed: false }
# ]

# # Display the list of tasks
# get '/' do
#   @tasks = tasks
#   erb :index
# end
# require 'sinatra'
# require 'sinatra/reloader' if development?

# # Sample data for tasks (in-memory storage for simplicity)
# tasks = [
#   { id: 1, title: "Learn Ruby", completed: false },
#   { id: 2, title: "Build a web app", completed: false }
# ]

# # Display the list of tasks
# get '/' do
#   @tasks = tasks
#   erb :index
# end
# require 'sinatra'
# require 'sinatra/reloader' if development?

# # Sample data for tasks (in-memory storage for simplicity)
# tasks = [
#   { id: 1, title: "Learn Ruby", completed: false },
#   { id: 2, title: "Build a web app", completed: false }
# ]

# # Display the list of tasks
# get '/' do
#   @tasks = tasks
#   erb :index
# end
# require 'sinatra'
# require 'sinatra/reloader' if development?

# # Sample data for tasks (in-memory storage for simplicity)
# tasks = [
#   { id: 1, title: "Learn Ruby", completed: false },
#   { id: 2, title: "Build a web app", completed: false }
# ]

# # Display the list of tasks
# get '/' do
#   @tasks = tasks
#   erb :index
# end