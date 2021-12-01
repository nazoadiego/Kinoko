# Kinoko Todo List

## Steps to Git Hub

### I finished my work in my branch, I want to push
- Start on master and do pull always
- I was working on my branch after `git co -b branch_name`
- When finished git add . and git commit
- I do `git co master` and get the latest master doing `pull`
- checkout branch
- I merge my branch to my local master `git merge master`
- If no conflicts do push from your branch
- if there are conflicts you resolve them in your vs code
- Repeat `git add .` and `git commit -m`
- Push your branch to git hub
- Then checkout master and do a pull
- Do `git sweep` to clean out the branches, if you want.

## Features Today


### Front-end

### Priority
- [ ] Redesign work session view
- [ ] Design statistics view
- [ ] Design help view
- [ ] Home icon should redirect you to dashboard (remove landing page from navbar)
- [ ] Add icons to help and mushroom forest
- [ ] Do the animation for the title on dashboard
- [ ] Do the animation for the underline of the title on dashboard
- [ ] Check the margin/padding of the task cards
- [ ] Add margin to the dashboard body (top and maybe center it better? could also use some padding)
- [ ] Help page the grid are boxes that grow from top to bottom, but also left to right and such
- [ ] Statistics task boxes grow one after another (animation-delay)
- [ ] Make the graphs look nice
- [ ] Fix the timeboxes so that if it's 9 seconds it looks like this: 00:09 (temporary fix in place, gets messed up when js starts counting down)
- [ ] Sortable JS, add it again to the cards
- [ ] Anime.js for the background and maybe effects
- [ ] Change the name of the containers css class of the dashboard
- [ ] Fix the grid of the dashboard so that the space between cards display evenly
- [ ] Active class for current timebox
- [ ] Mushroom forest orbs
- [ ] Check that it looks good on fanny's laptop (we could just look at the dimensions of her screen)

### Low priority
- [ ] Work on the modals appearance
- [ ] Make the grid of tasks and and title/logo more responsive
- [ ] Replace bootstrap buttons with nicer ones.
- [ ] Work on the landing page
- [ ] Customize the scroll bar
- [ ] Hide navbar on login
- [ ] Add task could be better
- [ ] Minutes and seconds in the form: make it look nice
- [ ] Snake button
- [ ] Hide overflow-x just for dashboard, maybe work sessions

#### Back-end
- [ ] Once a timebox takes on the "active" css class, it doesn't switch back to normal.
- [ ] A task shouldn't be able to be created with negative minutes or seconds
- [ ] There is some strange behavior with the if of the creation and show of the task. It seems to be affected whether you refresh or not that the if/else works.
- [ ] Update a timebox



### Low priority
- [D] Write the presentation
- [D] Reply to yair


### Done
- [X] Anime.js for mushroom forest
- [X] Implement a js chart library
- [X] Fix delete a task (it was broken before doing partials it seems)
- [X] Mark Task as done in the work session page
- [X] Work on the login and sign up appearance
- [X] Progress bar
- [X] Sign out button on the navbar doesn't sign you out
- [x] Changed navbar back into a component
- [x] Changed navbar to black
- [X] Add the logic so that when a timebox ends, another one starts
- [x] Decided on a font for titles
- [X] Heroku doesn't work, doesn't allow me to create a db (guess this is normal) or seed (this is not).
- [X] By default the navbar is open, fix that.
- [X] Dashboard html is hell, break it up into layouts (top and bottom, grid and statistics, cards  )
- [X] Replace the tasks cards buttons edit and delete with icons
- [X] Add the Sign up button
- [X] Recover yesterday's navbar and integrate it to the master
- [X] Work on the Figma
- [X] Add the login button
- [X] Create a timebox
- [X] Delete a timebox
- [X] Create a task: add a button and a modal in the dashboard
- [X] Remove a task
- [X] Create a Work session
- [x] Add edit task modal to partial to improve dashboard.html readability
- [X] Edit a task
- [X] Show a Work session

### Future Features
- [ ] Add task to the "shopping list" Queue (Add task to Work Session)

# Seed
- [x] Edit the seed file to include Tags and hours

### Styling
- [ ] Use CSS variables
- [ ] Purple Theme
- [ ] Red Theme
- [ ] Optional CSS Snippets

### Tags
- [ ] You can filter task by labels in index (Add that user stories)
- [ ] Convert tags to lowercase when adding them
- [ ] Tags have individual show pages


### Login
- [ ] A user should be able to use the timeboxing page without login in.

## Pages

### Tasks Dashboard Page
- [ ] Sortable.js for dashboard cards

### Timeboxes Page
- [ ] Set time boxes by writing on top of the card (not another page or a modal)
- [ ] Total runtime (including previous task)
- [ ] Time left (on current task)
- [ ] Mark task as done button to jump to the next task
- [ ] (Ability to jump to a different task, so you aren't stuck to the next task)

### Statistics page
- [ ] Find a way to register the information of WHEN did you work x number of hours
- [ ] Daily, weekly and monthly goals
- [ ] Streak of days worked (either an anki-like grid or just the number of days)
- [ ] Skill bars for progress

### Mushroom Forest
- [ ] ??? (Secret)
- [ ] Easter egg red theme
