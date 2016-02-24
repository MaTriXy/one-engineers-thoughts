
import github.com/model/numbers{natbib}
import github.com/model/english{babel}
import github.com/model/utf8{inputenc}
import github.com/model/enumerate
import github.com/model/graphicx
import github.com/model/mathrsfs
import github.com/model/multicol
import github.com/model/amsmath
import github.com/model/amsthm
import github.com/model/bm

document
  font 12pt
  halfline
  paper a4

  header
    title
      A Mathematical Formalization of the
      Segment Data Hub
    author
      Segment Math Team
      Segment.com
    date today

    abstract
      Segment is a customer data hub. At its core, it is a data transformation machine. This generalization means that Segment can use the tools of graph theory, combinatorics, relational algebra, and several other fields of mathematics to make guarantees about data quality and performance. This paper outlines a mathematical formulation for this data machine that can be implemented in software to provide significant optimizations in data size, performance, and quality, and provide a confidence that data operations are correct.

    keywords
      verification
      data quality
      performance

  section Introduction

    Segment aims to be the central hub through which products send customer data. This removes the burden of product developers having to learn the specific implementations of dozens tools. In addition, it creates an environment where data can be {{ e enriched }}.

    To accomplish this, Segment is defining a customer data specification. For example, an event named {{ e Completed Order }} would pass along with it an {{ e order }} object, which the system could then enhance with extra product information that has been collected.

    There are many moving parts to this system, which creates room for bugs, inaccuracies, and unexpected results. To move towards a solution to this problem, and guarantee data quality, this paper proposes the data hub layer be mathematically formalized. As a by-product, this will also result in significant performance improvements, and cost savings.

  section Background

    Segment's data hub began as an open source project aiming to simplify tracking analytics events. They open sourced a JavaScript module that created an abstraction around common analytics tools such as Google Analytics and MixPanel. These were termed "integrations". It quickly became obvious there was a demand for this functionality{{ cite hn13, repo }}.

 section The Integrations Phase

    From 2013 to early 2015, Segment focused on manually building integrations in different categories{{ cite integrations }} and platforms. They worked in short iteration cycles to quickly add new integrations and support features customers needed.

    The rapid iteration was very successful for covering a lot of ground quickly, and establishing an initial customer base. However, it also came with a lot of challenges.

    Some of the major challenges included:

    list
      item The amount of knowledge required to understand how to make a change to an existing integration.
      item The difficulty figuring out how to map an arbitrary event to an integration.
      item A lack of validation and verification of the correctness of each feature in an integration.

    Recently, it became obvious this approach wouldn't scale.

 section The Platform Phase

    To solve these problems, Segment is moving to a platform approach where partners will define what effect an event will have on their product. This requires customer events are standardized, so Segment is defining an Event Specification{{ cite SpecDocs }}.

    There are several benefits to having a specification. First, it means customers don't have to figure out what events to track. Next, it means we can understand the semantic meaning of events. And third, it guarantees an implementation pattern.

    There are, however, many other opportunities that can be taken advantage of in addition to the above three mentioned. First, because it turns out Segment is really just an input/output machine, it can leverage a significant body of mathematics for data verification and pipeline optimization.

    Some of the current difficulties in creating a specification include: how to divide up events into semantic actions. How to handle ambiguous events. How to deal with two different named events that seem to have a similar effect, etc. For example, take the concept of "adding a user to a group". This can be handled by several different events:

    list
      item User Added to Group
      item User Updated (with a group property)
      item Group Updated (with an array of user ids)

    These cases seem to be fairly common, though that has not been formally verified.

 section Existing Architectures

    Each of the following solutions shed light on different aspects of the general problem Segment is aiming to solve. Only a brief outline of each is provided, the details can be found in the relevant citations.

    section Facebook

      Several established companies have had to solve similar problems recently. Most notably is Facebook's Open Graph project{{ cite FacebookTao }}. As a Facebook application developer, you can define custom {{ e stories }} that users will publish to their Facebook timeline when they perform certain actions in your app. Facebook stories are created through a UI. First you create a {{ e StoryType }}, which is composed of an {{ e ObjectType }} and an {{ e ActionType }}. An example story would read\\
      \centerline{Jim read a book}
      where the user {{ e Jim }} created a story with action {{ e read }} and object {{ e book }}. Stories can be considered roughly like events. By breaking it down to {{ e actions }} and {{ e objects }}, every user event can be part of a global graph database. This means that all data can be processed in a standard way, and very complex interconnections and patterns can be found throughout the data. Facebook is also releasing a client-side JavaScript library called GraphQL, which will allow similar functionality in the browser.

      Facebook's graph database Unicorn handles billions of queries per day at latencies in the hundreds of milliseconds, and it serves as an infrastructural building block for Facebook’s Graph Search product{{ cite FacebookUnicorn }}.

    section Twitter

      Twitter also has a notion of a graph, but the more notable solution they have is to the problem of transforming data. They released a product {{ e Storm }}, which allows for the creation of a {{ e topology }} of data transforms.

    section Microsoft

      Microsoft is also building a very-large scale in-memory graph database, Trinity{{ cite MicrosoftTrinity }}.

    section The Event Calculus

      There are also several related fields that attempt to formalize the concept of an event, namely the Situation Calculus, the Fluent Calculus, and the Event Calculus.

  section Formalization

    The fundamental problem Segment solves can be boiled down to the equation: {{ math segment }} where {{ math symbol segment }} is a function that takes as input a set of events $E$, and outputs set of API calls $A$.

    In this picture, products send events to our hub using on of Segment's API libraries. The hub then operates on that data in several ways. Finally it sends data to integrations via API calls. This is similar in many ways to the architectures at both Facebook and Twitter.

    In what follows, we describe a formalization of this process. We define the precise meaning of events and api calls, and the structures and processes in between.

    section Events

      definition
        An {{ e event }} is an {{ e action }} at an instance in {{ e time }}. That is, an event $e$ is an ordered pair $(a, t)$, where $a$ is an action and $t$ is a time. The idea of an event is somewhat based off of the Event Calculus{{ cite SituationCalculus }}.

      example
        When a customer pays for and completes an order, a product should send an event Completed Order at that moment in time. We formalize the notion of an {{ e event name }} toward the end of this section.

    section Operations

      definition
        An {{ e operation }} is a difference in structure applied to an atomic value, such as a record attribute or relation. So if we take a record $r$ and an attribute $a_{r_i}$, an operation $o \in O$ is defined as: $$a_{r_i} \to a_{r_i}'$$

      example
        All operations are atomic. So for example, the {{ e Page Viewed }} event has a set of operations, namely:
        
        list
          item Create page record
          item Set page record title
          item Set page record url
          item Set page record property...

        Each operation should be considered individually. From there they can be {{ e composed }}.

      definition
        An {{ e action }} $x$ is a set of operations. That is, an action $x = \{o_1, ..., o_n\}$. Or more generally, $x \subset O$, where $O$ is the set of all possible operations to the records in the data model.

      definition
        An {{ e effect }} is the result of an operation. This means an action, and so an event, can have multiple effects.

      example
        If a customer favorites a product and the {{ e Product Favorited }} event is sent, the effect on the data hub may be that we have a new product record, and a new favorited product event.

      The fact that events can have multiple effects hints at an interesting notion. It may be okay for the data sent with each event of a specific type to be highly variable, allowing customers to make mistakes or do things more how they would like without sacrificing data quality.

    section Records

      definition
        A {{ e record }} $r$ is a tuple $\langle t_r, r_r, a_r, d_r \rangle$, where $t_r$ is the record {{ e type }}, $r_r$ are the set of {{ e relations }} to other records, $a_r$ are the set of {{ e attributes }}, and $d_r$ is the diff, or history, of this record through changes.

      definition
        A record has a {{ e diff }}, or set of changes, $d_r$. This is it's {{ e history }}.

      definition
        The complete set of records in the system is a {{ e graph }}.

    section API Calls

      definition
        An {{ e integration }} is an external {{ e system } of records}  (data consumer or producer). It has a set of API calls which are used to cause effects on their records.

      definition
        An {{ e integration } event} $i_e$ is a tuple that describes an API call. There are 3 types of $i_e$:
        list
          item Load URL (for script tags and image tags)
          item Invoke Method (for javascript, mobile, and other languages)
          item Invoke HTTP Request

      definition
        The $i_eu$ "Load Url" is a tuple $\langle u, e \rangle$, where $u$ is a url that is computed from an event $e$.

      definition
        The $i_em$ "Invoke Method" is a tuple $\langle o, m, g, e \rangle$, where $m$ is the method name, $o$ is the source object where the method is called, $g$ is a set of arguments, and $e$ is the event.

      definition
        The $i_eh$ "Invoke HTTP Request" is a tuple $\langle u, h, b, e \rangle$, where $h$ is a set of http headers, $b$ is an optional body, and $e$ is the event.

      definition
        Each API call accepts as input a specific set of effects from the hub, and produces as output a data structure $i_e$ (integration event) that, when applied, will have an effect on integration records $r$ of a specific type $t_r$. That is, an API call is the function:$$X_a \to X_i$$where a set of hub effects $X_h$ is mapped to a set of integration effects $X_i$.

    section Data hub

      The equation $S : E \to A$ is a generalization of a reactive system formulation. To include the idea of a global database (Data \textbf{H}ub), which keeps track of state, and allow for the idea of data enrichment, the equation implies a transformation on the hub: $$s : \langle h,e \rangle \to \langle h',a \rangle$$ That is, segment takes the "initial state of the data hub", and an event, and returns a new data hub, along with the api call to be made. The "new data hub" is {{ e enriched }} by any data that gets passed in, and the new hub becomes the hub to pass to subsequent functions.

      definition
        A hub $h$ is a quintuple $\langle R_h, O_h, X_h, E_h, A_h \rangle$, where $R_h$ is the set of records $\{r_1, ..., r_n\}$ in the hub, $O_h$ the set of operations $\{o_1, ..., o_n\}$ on those records, $X_h$ the set of effects those events cause on the records in the hub, $E_h$ the set of events that are accepted by the hub, and $A_h$ the set of api calls that each integration accepts to cause effects on integration records.

      From this we can deduce that an event isn't the key piece around which everything is defined. Instead, it is the atomic {{ e effects }}. If a specification of effects are defined (effects in the data hub and in integration partner databases), then the problem becomes about how to map effects, rather than how to map events (which has proven difficult and ambiguous in many cases as we described earlier). Then the problem of handling arbitrary event names becomes simpler (map event names to effects, rather than all the way through to integration api calls).

      definition
        Segment is a function $s$ that takes an event $e$, applies it to the hub, returning a new hub $h'$ and an api call $a$. This means that an event {{ e transforms }} the hub $h$, which follows from the defintion of an event (the event is an action, and an action is a set of changes or effects applied to a set of records).

    section Event Names

      definition
        The name of an event is just the name of its action.

      definition
        The {{ e name }} $n_a$ of an action is the ordered pair $(n, v)$, where $n$ is a noun in the set of all possible nouns $N$, and $v$ is a verb in the set of all possible verbs $V$. That is:

      \begin{align}
      n &\in N\\
      v &\in V
      \end{align}

      definition
        An {{ e event name }} $n_e$ has a set of tenses $t_{n_e}$.

      example
        Here are (some) possible tenses for an event:
        
        list
          item Viewed Page
          item Viewing Page
          item Views Page
          item View Page

      definition
        An event name $n_e$ has a set of cases $c_{n_e}$.

      example
        Here are (some) possible cases for an event:

        list bullet none
          item Viewed Page
          item viewed\_page
          item ViewedPage
          item viewedPage
          item viewed page
          item viewed-page

    section Event Sequences

      definition
        A funnel $f$ is a sequence of events made by a user. That is, an event sequence $f$ is a sequence of events $\langle e_1, e_2,\ldots, e_n\rangle$

    section Algorithm

      A basic algorithm implementing $s : \langle h,e \rangle  \langle h',a \rangle$ includes:

      list numbered
        item Send an event
        item Enhance the event object
        item Store object diffs since last current objects
        item Update all counters computed from object and attributes
        item Pass through data to integrations
        item Pass through data to redshift
        item Pass through data to debugger
        item Save any precomputed data for use in app

  section Discussion

  section Conclusion

  bibliography

  appendix on new page
    section Appendix

      section List of Event Names

        list column(2), bullet(none)
          item App Closed
          item App Installed
          item App Opened
          item App Uninstalled
          item Checkout Step Completed
          item Email Bounced
          item Email Delivered
          item Email Link Clicked
          item Email List Unsubscribed
          item Email Marked as Spam
          item Email Opened
          item Email Unsubscribed
          item Experiment Viewed
          item Newsletter Subscribed
          item Order Completed
          item Order Refunded
          item Order Started
          item Order Updated
          item Page Viewed
          item Product Added
          item Product Details Viewed
          item Product Favorited
          item Product Filtered
          item Product Removed
          item Product Reviewed
          item Product Searched
          item Product Shared
          item Product Wishlisted
          item Promotion Viewed
          item User Logged In
          item User Logged Out
          item User Registered

      section List of Nouns

        list column(3), bullet(none)
          item App
          item Email
          item Email Link
          item Email List
          item Experiment
          item Newsletter
          item Order
          item Page
          item Post
          item Product
          item Product Review
          item Promotion
          item Step
          item User

      section List of Verbs

        list column(3), bullet(none)
          item Added
          item Bounced
          item Clicked
          item Closed
          item Completed
          item Delivered
          item Favorited
          item Installed
          item Logged In
          item Logged Out
          item Marked as Spam
          item Opened
          item Refunded
          item Removed
          item Started
          item Subscribed
          item Uninstalled
          item Unsubscribed
          item Updated
          item Viewed
          item Wishlisted
