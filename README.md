# To-Do List Ruby Application

A simple and interactive `https://github.com/TalhaT298/listifyRubye` To-Do List web application built using **Ruby** and **Sinatra**. This application allows users to add tasks, mark them as completed, and view the updated list dynamically.

## Features

- **Add New Tasks:** Easily add new tasks to your to-do list.
- **Mark Tasks as Completed:** Update tasks to indicate completion.
- **Dynamic UI:** User-friendly interface styled with CSS.
- **Lightweight and Fast:** Uses Sinatra for a lightweight web server.
- **In-Memory Storage:** Simple in-memory storage for tasks (perfect for quick demos).

## How to Run the Application

1. Clone this repository:
   ```bash
   git clone <repository-url>
   cd <repository-folder>
   ```

2. Install the required Ruby gems:
   ```bash
   bundle install
   ```

3. Start the Sinatra server:
   ```bash
   ruby app.rb
   ```

4. Open your browser and navigate to:
   ```
   http://localhost:4567
   ```

## Application Routes

- **`/`**: Displays the list of tasks.
- **`/new`**: Form to add a new task.
- **`/add`**: Handles the form submission for adding a new task (POST request).
- **`/complete/:id`**: Marks a task as completed (POST request).

## Code Overview

### Main Application (`app.rb`)

The core Ruby file handles routing, rendering views, and managing tasks.

```ruby
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
```


## Why This To-Do List is Best

- **Beginner-Friendly:** Great for learning Sinatra and understanding basic web development principles.
- **Customizable:** Easy to extend and add more features (e.g., database integration).
- **Lightweight:** Minimal dependencies and quick to set up.
- **Interactive UI:** A clean, simple design with responsive behavior.

## License

This project is open-source and available under the MIT License.
