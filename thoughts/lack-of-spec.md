Lack of Clear Specification
This note is a very common problem in software development teams that isn’t acknowledged. It results in engineers feeling frustrated and under-valued, and it has a negative impact on their reputation, when they are doing the best they can given the constraints. If we solve this well, engineers will feel highly valued and motivated to do good, and their reputation won’t be damaged.

1. An engineer recognizes a problem in a project.
2. A first higher-up (designer, founder, etc.) says we can ignore it, or do some hack.
3. The engineer ignores it, or does a hack. A few days or weeks pass.
4. Another second higher-up recognizes the same problem, and describes it the same way as the engineer.
5. Both higher-ups agree we should fix it.

For the engineer who saw the problem originally, this is frustrating. What we hear is "you did it wrong". We feel judged, that we didn't put in effort, or that we make bad decisions.

We feel this way because, when we recognized the problem, we spent time coming up with good options/solutions. We tried to help improve the project, and took initiative. We also went out of our way to communicate this to the team.

When we were told the first time to ignore/hack it, we did because the designer/founder said it was better that way. It felt like a group decision, but their input had more weight. Often times we know it should still be solved, but we don't feel empowered to make that decision.

So we adjusted our estimate of the scope of the project, and prioritized our time differently as a result. But then when the second higher-up recognizes the problem, and says we should have solved it the way we originally suggested, we feel frustrated and hurt. We feel like we were "bad" to some degree. We did it wrong. Also, since the second higher-up doesn't typically recognize the problem until toward the end, we feel rushed. We have to make a lot of changes last minute. This makes it seem like we can't estimate our time properly, when that's not true.

From the second higher-up's perspective, we forgot to do something, or overlooked something. We aren’t detail oriented. It doesn’t seem like we’re that invested in our job. But really, we are, we came to the same decision you came to, it's just that we weren't empowered, so our input wasn't considered or respected. And now we look bad.

## What is the general structure of this common situation?

It boils down to not having a clear specification. If the engineers had a clear design specification, then our job would be to implement that specification as best we can. We are good at this, this is one of our best skills. We would implement the specification with very few errors compared to how it goes now.

When there is not a clear specification, here's what happens.

- An engineer runs into something not specified, a problem.
- They take initiative and come up with a few solutions/suggestions.
- They communicate these solutions to the team/designer/higher-up.

Essentially, the engineer is filling in the gaps in the specification. They are doing their job, and the job of the specification creator (designer, team-lead, founder, etc.). This work isn't really acknowledged, and the net result is the second higher-up sees that the engineer made mistakes, and isn't fully invested in their job, and the engineer feels frustrated and under-valued.

# Specific Example
## 1. Integration Form Design
This was an issue Peter brought up in the nav redesign today:
----------

[ ] The integration setting “description” content should be hidden behind a hover somewhere… it’s totally overwhelming and distracting just displaying it in full:

----------

Steven brought up that exact issue several times, and discussed it a bunch with Anthony and Lance. Steven suggested several ways of improving it, and Lance suggested some ways, but Anthony said we should wait because it would take some time to redesign. (It increases the scope of nav-redesign, and Deku needs some improvements first).

Now that Peter brought it up, Anthony agrees. This makes us feel like “what the fuck, what Peter is saying is exactly what I said”. We feel like we aren’t empowered to make decisions. And Steven feels like Peter thinks he built the wrong thing, or forgot about an important piece of the integrations page, or isn’t detail oriented or whatever. We also feel not listened to, or given credit that we already came up with same solution as Peter did.

## Other potentially related examples
- Lance coming up with a solution for the data system in Deku, but Anthony saying no we should do it a different way. Then we run into the problems I outlined and he comes to a similar decision.
- Lance coming up with solutions to the app REST API to prevent bugs down the road, but it being ignored. Then later Calvin says how can we improve the REST API. I already said how, but that wasn’t acknowledged.
- Fixing invite. I came up with a few solutions. But Ian told me to add it to the quick fixes. But then we never get around to it. And Calvin suggests we can wait on it for now, something like that. Then Peter came along and says we should fix it, and nothing I did is of any use. And Calvin tells me I find bugs but never solve them.
- Fixing the build process. Lance has a solution to the build process, and has presented it 2 or 3 times over the past 6–8 months, since the early days of duo. Yet it has been largely ignored, and the build process continues to be very slow and painful. And Calvin keeps asking if we can improve the build workflow. I already said how.

There is a somewhat similar problem to “Lack of Specification”, but can’t pinpoint it yet.
