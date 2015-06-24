# Rails How To

## Blogging Platform Site

1.  Routes

The first step is to "route" a request to a controller.

HTTP requests come from URLs, clicking links and submitting forms. The router listens to reqests and passes them to to a controller according to the code we write in `config/routes.rb`

http://localhost3000/ #=> PostsController`s index action is invoked.

`root "posts#index"`

2. Generate a Controller

To generate controllers, go to the command-line and run this command in the root of your project (the "blog" folder):

`$ rails g controller posts index`

3. Generate a Model for your resource (a post) 

To generate models, use the command-line again:

`$ rails g model post`

Models are singular. They build instances of the resource from data in the DB.

4. Set up database

Describe database structure with a migration file. Run the migration task to read the file and setup DB.

5. Provide Seed Data

Create seed data in the seeds file. Run the seed task to insert the data in the DB.

6. Construct your view

Using HTML markup and ruby within ERB tags, build a page that renders resources. 

---

0. `$ rails new <name_your_project>` 
1. Routes - Provide a URL destination or endpoint.
2. Controller - Define actions for rendering views of that name. 
3. Action - Reach out to a model (maybe?) and pass object to a view.
4. Model - Talk to the DB.
5. View - Presenting objects with markup, UX (user experience) logic.

