# Start development environment
```sh
docker compose run --rm app bin/rails db:create # Only one time

docker compose up
```

Open http://0.0.0.0:3000/ in a browser (may not work in Safari).

# Questions and answers

**What should users see on the main page?**
List of active projects with recent comments. Projects can be sorted by last updated or by creation date (default).

**What statuses are available?**
"New" - status for newly created projects, "In progress", "Done" or "Archived".

**Is workflow strict? For example can a project be moved from 'New' to 'Done' skipping 'In progress'.**
Yes, it's strict and hardcoded. New -> In progress -> Done.

**Who can change the status of the projects?**
At the moment no restrictions are provided.

**Don't we miss Task entity?**
Sort of, but treat projects as tasks.

**What fields included into Project?**
Title and description are required, and deadline (date type) is optional.

**Comments can be any length?**
Yes. For now they can any long, but should have at least 3 letters.
