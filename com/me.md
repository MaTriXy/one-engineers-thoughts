Interesting, never seen the term NIH but it makes sense. I do mostly JS stuff at Segment. I dunno why we do this, sorta hard to explain. I tried to be brief, but there's so much subtlety in the reasoning that I have difficulty summarizing.

In my personal experience, using large, established tools are great if you're building something according to the rules developers before you already put in place.

But sometimes (most of the time IMO), the solution misses a key case. A case they never saw, but to you seems totally obvious.

One possible solution is to try to add support to the established tool for this edge case. In my experience, this is very hard to do. First, you have to fully understand the direction they want to take the project, and if your new case fits within that vision. You have to carefully negotiate to integrate the new functionality, and often takes months. So then you have the option of maintaining a fork, or doing weird hacks around the problem. But then you have to deal with maintaining those workarounds as the original project evolves.

This reasoning also applies to pluggable projects like Gulp and Yeoman. Even though they're pluggable, there are assumptions about the core API that sometimes don't account for a case you run into, and it's difficult to add support. People say they are open to new ideas, but in practice it's often not true.

Another important factor for me personally, and most of the people at Segment I would say, is readability and the visual simplicity of the code. This is an unexplored research topic. There is something about visually blocking the code into clear chunks, and simple naming, that makes it easier to learn and understand. It's a design sorta thing. Maybe it's subjective, but my hypothesis is that it's not. Some code is just easier to read than others. And easier to read code means it's more enjoyable for you and others to work with.

So then it's like, how do you make it so you can easily add support to unanticipated edge cases, and make the code easy to understand and reason about?

One answer is making it super modular and composable, everything from the ground up, and making everything simple (visually and functionally). This way if you discover a year from now that your view rendering system had some problems, you can start over without having to rebuild everything from scratch.

Also, creating your own tools has the added benefit that you deeply learn new stuff quickly.
