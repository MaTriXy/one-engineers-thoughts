
- route can be relative to parent
- route can be absolute
- route can inherit all parent route's components and add more
- route can define complete set of components.

In the end, you have a tree of routes, and a tree of components.

Definition app : Component :=.

Theorem app_has_tree_of_routes
Theorem app_has_tree_of_components
Theorem there is a relation between tree of routes and tree of components

Theorem There is a transition between routes, that uses the minimal set of components.

- case: route is totally different than sibling route
  - use totally different component tree
- case: route has just one thing different from sibling route
  - reuse existing component tree, but specify alternate

route track
  route event edit
    route details
      like parent route, except
        select tab details
    route properties
      like parent route, except
        select tab properties

In this case, you already have the component trees built, independent of a UI. And you just map the route to a specific state of the component tree.

So, components should know nothing of the routes. They should have properties that expose things the routes can change.

component event edit
  property tab(selected), type tab

component track
  property sheet

---


route /:user
  route /:project
    route /plan
      route /track
        route /new
        route /details/:event

option Define entire app structure each time
option Each route defines only its piece of the app

route /:user/:project/plan
  redirect /:user/:project/plan/track

route /:user/:project/plan/track
  component app
  component track

route /:user/:project/plan/track/new
  component app
  component track
  component event create

route /:user/:project/plan/track/details/:event
  component app
  component track
  component event edit

# make sure tree of components matches tree of paths, to make it well-designed.
check route similarity

type route
  property components, tree component
  property redirect, type path
  property path

route /:user/:project/plan
  redirect /:user/:project/plan/track

route /:user/:project/plan/track
  component track

route /:user/:project/plan/track/new
  component track
  component event create

route /:user/:project/plan/track/details/:event
  component track
  component event edit

route /:user/:project/plan/track/details/:event/properties
  component app # view
  component track # view
  component event edit # view
  component tab properties # state of view
