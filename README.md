# How to run
  `git clone` the project
  `rake db:create`
  `rake db:migrate`
  `rails s`
  
# Nested Resources

Some resources require the context of another resource.
  
  e.g. : A `magazine` contains many `add`s which we express by means of nested routing:
       
  `/magazines/1/adds` and `/magazines/1/adds/1`

[https://github.com/Ajwah/mag-z/blob/master/config/routes.rb#L2-L4](routes.rb):

```ruby
  namespace :admin do
    resources :blogs
  end
```

# Namespace
   Some resources require a conceptual context
   e.g.: An `admin` is to manage website content - `blog`s. 

A `blog` may be meant for public consumption but its creation is restricted to
`admin` only. We can express modifications to `blog` entries as private by
means of namespacing them under the concept of `admin`.
e.g. `/admin/blogs`

When the public intends to consume the `blog` content; then such
consumption may be accessible under a plain `/blogs` endpoint.

