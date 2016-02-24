
mockups

- if you're not on a page, and you save any of the files related to it, it should go to that page?
- sometimes you don't want it to go to that page, when is that?
- how to do basic walkthroughs in mockups?
  - there are no urls in mockups
  - there is no changing pages
  - so if you change a mockup walkthrough, it doesnt necessarily need to refresh, though it probably should
  - this can be in the spec, just steps
    - no assertions necessary
    - so when you save a spec.js file in a mockup, it refreshes and runs the specs
    - doesn't need to keep track of any state thru websockets, because it is all client side

apis/requests

- when you create a new api file here, it is like `server/api/:object/:action`
- each has a spec.js
- each has a test.js
- when you save the file or spec, it reruns the spec
- settings.json has route information, maybe also has permissions later

screens

Screns are related to the mockups. Once you're done with a set of mockups, you can wire it up. When you create a new folder in screens, ideally it would look through your mockups to create the initial data.

wiring up the mockups to the routes

- each time you save a file here, it reloads on that url
- has a spec.js like the mockups
- no css
- has settings.json with route information
- knows about /client/mockup/index.js, which has all the components built in it

Screens require using data from the database, by making API calls. So you also want to have the API calls working.

Once you're done with a screen, you can write walkthroughs.

walkthroughs

Write these when you're done. This is independent of UI.
