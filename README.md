
## Rails Service Proxy

This is a very simple `PoC` that implements two rails web applications, the host app and service app.

Host app currently represents a monolith web application that keep features in that

Service app is an API only project with a specific domain feature and its inside the Cloud infrastructure.


### User Stories

- [ ] User can auth at Host application using email and password
- [ ] User can load an endpoint API `/services/api/v1/tasks`
- [ ] Host application need to validade User authentication


### What we want?

- Host app need to provide a simple authentication form to Users
- After user got authenticated, he can get some data from `/services/api/v1/tasks`
- The host app cannot have this endpoint implemented
- The host app need to verify users authentication before dispach request to service app
- Service app need respond properly when it doesnt have the requested resource

