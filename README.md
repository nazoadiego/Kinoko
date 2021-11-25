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
- Do `git sweep` to clean out the branches

## Features Today

### Working on my own
- [x] Changed navbar back into a component
- [x] Changed navbar to black
- [x] Decided on a font for titles
- [ ] Dashboard html is hell, break it up into layouts (top and bottom, grid and statistics, cards  )
- [ ] Progress bar
- [ ] Snake button (for landing page to dashboard)
- [ ] Bidimensional button for login
- [ ] Black square button
- [ ] Black square button for sign up
- [ ] Fix the fonts color when needed
- [ ] Work on the modals appearance
- [ ] Work on the login and sign up appearance
- [ ] Replace the tasks cards buttons edit and delete with icons
- [D] Work on the landing page
- [ ] Customize the scroll bar
- [ ] Sign out button doesn't sign you out




### Priority
- [ ] Minutes and seconds in the form: make it look nice
- [T] Add the logic so that when a timebox ends, another one starts
- [ ] Button_to to Link_to so that the task card displays properly
- [X] Recover yesterday's navbar and integrate it to the master
- [X] Work on the Figma
- [ ] Replace bootstrap buttons with nicer ones.
- [ ] The Link_to should be inside an actual button
- [ ] A task shouldn't be able to be created with negative minutes or seconds

### Low priority
- [ ] Update a timebox
- [ ] Fix delete a task (it was broken before doing partials it seems)
- [ ] Active class for current timebox (a glowing border)
- [ ] Hide overflow-x just for dashboard, maybe work sessions
- [ ] Add task to the "shopping list" (Add task to Work Session)
- [ ] Mark Task as done in the work session page

### Done
- [X] Create a timebox
- [X] Delete a timebox
- [X] Create a task: add a button and a modal in the dashboard
- [X] Remove a task
- [X] Create a Work session
- [x] Add edit task modal to partial to improve dashboard.html readability
- [X] Edit a task
- [X] Show a Work session


### Validations
- [X] Validations for Tasks
- [X] Validations for Timeboxes
- [X] Validations for Work Session
- [X] References for all of them

# Seed
- [x] Create the seed file (hmmm but what should we seed?)

### Work Session

## Future Features
- [ ] You can filter task by labels in index (Add that user stories)
- [ ] Make tasks recurring (maybe a bookmark field for the tasks object)

### Styling
- [ ] Use CSS variables
- [ ] Purple Theme (Dark Theme)
- [ ] Red Theme (Light Theme)
- [ ] CSS Snippets

### Tags
- [ ] Convert tags to lowercase when adding them
- [ ] Tags have individual show pages

### Task

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
