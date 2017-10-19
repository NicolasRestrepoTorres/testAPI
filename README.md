## API for tasks

https://testapi3.herokuapp.com/

### Description

This is a RESTful API built in Ruby on Rails intended to check the status
of a certain tasks and other information related, this API uses token authentication
generated in the login of each registered user by the administrator of this API.

### Version
Version: 1.0

### Instructions

Send your credentials (email, password) via POST

```
https://testapi3.herokuapp.com/login
```

You'll receive a valid token that hasn't time of expiration by the
time, so you must logout via DELETE to invalidate your token


```
https://testapi3.herokuapp.com/logout
```

Now you can make requests to the Task model and check all task via GET,
add tasks via POST, edit tasks via PUT and delete tasks via TASKS.
### Developer: Nicolás Restrepo Torres

