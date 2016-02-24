
```
@travis @lance @anthonyshort for deleting, we gotta sync up on the newest ideas there

ian [5:53 PM]
basically we have an issue that came that if only go with `deleted: true` for events, we can end up with a bad UX where we need to have the user keep track of two mental "lists", their current plan and the "events i deleted list"

ian [5:54 PM]
then later if they decide to re-track an event that was deleted, there would either be no way to know what that list is, or we'd have to build out a new section of the UI that shows them all of the deleted events, complicating their mental model

ian [5:54 PM]
instead, if we're going with the "not permanently erase all past data" concept, which we are

ian [5:55 PM]
we want it so that if they track a "removed" event again the event will show up in the UI again, just like they'd expect

ian [5:55 PM]
basically instead of `deleted: true` we'd record `deletedAt: new Date()`

ian [5:56 PM]
and then the app's api would pop it back into the list if it's been seen since

ian [5:56 PM]
we didn't lock down the technical way yet, still need to figure out and agree on that piece

ian [5:56 PM]
but that's the UX we're shooting for. they basically get "removing" and then any tracking again just pops it back into the list

ian [5:56 PM]
so "remove" instead of "erase", "delete", etc.

ian [5:57 PM]
@anthonyshort: does that sound right for UX?
```
