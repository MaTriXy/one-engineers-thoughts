# Epoch

> Something like [TIMEX3](http://web.science.mq.edu.au/~mpawel/thesis/MazurPawel_2012_PhD.pdf) in JavaScript.

## TODO

This should be divided into 2 libraries:

- a generic time manipulation library, no parsing, just javascript object manipulation
- time parsing

## Install

```
npm install epoch
```

TODO browser version.

## API

There are `Time` and `Period` objects. Periods can have start and/or end times, and/or durations. Time is fuzzy. There is also the `Unit` object.

The api should look something like this:

``` javascript
var epoch = require('epoch');

assert.equal(
    epoch.annotate('I went to school the day before yesterday...')
  , 'I went to school <time>the day before yesterday</time>...'
);

epoch.period({hours: 12}).toInt();
epoch.hours(12).toInt();
```

Internals of the API

``` javascript
var epoch = require('epoch')
  , Time = epoch.Time
  , Period = epoch.Period;

// If you add this period to the 1st February (ISO) then you will get the 1st March.
// If you add the same period to the 1st March you will get the 1st April.
// But the duration added (in milliseconds) in these two cases is very different.
var period = new Period({months: 1});
var instant = Instant.parse('Feb 1, 2012');
instant.add(period);
instant.toString(); // "Mar 1, 2012"

// more complicated
// this says the winter solstice is on Dec 21, 2012,
// sometime between 6:00pm and 11:59pm (just made those numbers up)
var winterSolstice = new Interval(
  new Instant('Dec 21, 2012 at 6:00pm'), 
  new Period({hours: 6}) // better name is "Duration"
);

// then you could go to next years winter solstice:
winterSolstice.add(Period.years(1))
// and it should be Dec 21, 2013 from 6pm - 11:59pm
```

Then some BC calculations:

``` javascript
var originOfAgriculture = epoch.parse('10,000 BCE');
// which you could manually set up like this (but would have to know the internals of how BCE is handled)
var originOfAgriculture = new Time();
originOfAgriculture.subtract(new Period({years: 2012})).subtract(new Period({years: 10000}));
// there should be better ways to do this.
http://mail-archives.apache.org/mod_mbox/xml-xalan-dev/201204.mbox/%3C4F8B913C.6010106@e-z.net%3E
```

Ideas

``` javascript
// 1 million years ago
var mya = new Time({years: -1000000});
var mya = new Time(new Period({years: -1000000}));
// periods can have start and end dates, or they don't have to.
var triassicPeriod = new Period(new Time({years: -(250 * 1000000)}, new Time({years: -(200 * 1000000)});
triassicPeriod.startTime.add(new Period({years: 10}));

var triassicPeriod = new Period(new Time(-250), new Time(-200), new Unit('mya'));
var triassicPeriod = new Period(new Time(-250, new Unit('ma')), new Time(200, new Unit('ma')));
// maybe "unit" specifies the default operator or something
var triassicPeriod = new Period(new Time(-250, 'mya'), new Time(-200, 'mya'));
triassicPeriod.startTime.add(100)

var extinction = new Time(65, 'mya');
// how many years after the triassic period?
var periodBetween = new Period(triassicPeriod.endTime, extinction);
var millionYearsAfter = periodBetween.duration('ma'); // 200 - 65 = 135 ma
var yearsAfter = periodBetween.duration('years'); // 200 - 65 = 135 ma
```

This should print the date in a standard format that can be saved to a database. Some ideas are: (TODO)

- maybe have "year" and "millisecond" fields: {year: -1000000000} for a billion years ago
- or {millenia: -1000000} for a billion years ago.

## Ways of expressing time.

```
John left by the time he left
John left by the time he ate
John ate by the time he left
John left by the time he ate
April is usually wet. generic
I was born on a Tuesday. indefinite
I had swimming classes on every Tuesday in 1999. gapped interval
Winter 1999 was extremely severe. vague
We got married about three years ago. approximate
The first three days of every month are always the busiest. set of intervals
The movie is two hours long. unanchored interval
She left five days after he came back. event-dependant
Category Examples
Adverbs simultaneously, currently, lately, today, yesterday, tomorrow
Frequency
Adverbs
a lot, always, ever, frequently, hardly ever, never, normally, occasionally,
often, frequently, rarely, sometimes, usually, hourly, daily, weekly or
monthly
Prepositional
Phrase
on Monday, at 5 o'clock, for one hour, in January, over many years,
during the weekend, after the meeting, before 8pm, between 11am and
1pm, by Monday morning, since 1978, until January 2006, from 1939 to
1945, within one hour, following the meeting
Postpositional
Phrase
five months ago, five months hence, five months on, the whole night
through
Other Adverbial Phrases: later than ever before, at least five years, all spring, on Tuesday at noon
Adverbial Clause: when she saw the snake, as soon as I have any news
Noun Phrase coming weeks, a beautiful morning, cold winters
John visited his parents twice in two years.
John learnt Japanese for half an hour every morning for a month.
John washed cars from morning till night from June till August.
John had arrived on Tuesday at noon.
On Tuesday, John had arrived at noon.
Last week, John had arrived 3 days ago.
John had arrived at noon on Tuesday.
John had arrived 3 days ago last week.
Category Lexical Triggers Non-Triggers
Noun minute, afternoon, midnight, day,
night, weekend, month, summer,
season, quarter, year, decade, cen-
tury, millennium, era, semester, fu-
ture, past, time, period, point
instant, jiy, episode, occasion,
tenure, timetable, reign, light year,
megawatt hour, lifetime, history
Adjective recent, former, current, future, past,
daily, monthly, biannual, semian-
nual, daytime, daylong, onetime,
ago, preseason, short-term, long-
term
early, ahead, next, subsequent, fre-
quent, perpetual, later, contempo-
rary, simultaneous, preceding, pre-
vious, existing, modern
Adverb currently, lately, hourly, daily,
monthly, ago (+ adverbial forms of
adjective triggers)
earlier, immediately, instantly,
forthwith, meanwhile, heretofore,
previously, next, beforehand, fol-
lowing, later, soon, sooner, shortly,
eventually, occasionally, once, still,
again, timely, whenever
Time
noun/adverb
now, today, yesterday, tomorrow
Number 3, three, third, sixties
Proper name Monday, January, New Year's Eve,
Washing's Birthday, Solstice
Pronouns that, then, it (only pronouns that
co-refer with a markable expression)
Time patterns 8:00, 12/02/2000, 1994, 1960s
that cold day the next day late last night
earlier that year next summer recent decades
numerous Saturdays more than a month no less than 60 days
just a year ago only one hour long its own future
the countrys future just a year ago only one hour long
five years old a few weeks later hours earlier
five days after he came back three decades ago the second-best quarter ever
months of renewed hostility a historic day for the European enterprise
nearly four decades of experience
Perhaps in the next two weeks.
How 'bout the afternoon of Monday the ninth?
Okay, how 'bout Tuesday March the sixteenth sometime after twelve o'clock pm?
9th Sep. 1987
an hour and 30 minutes
Tuesday and Thursday
Wednesday or Friday
4 o'clock
next month
exactly one minute ago
the 2nd Sunday in May
Wednesday from 3pm to 5pm
in the past 3 years
every 2 minutes and 30 seconds
from 3pm to 5pm
the rest of the year
sometime between 3pm and 5pm
other than Wednesday
less than 1 hour and 30 minutes
sometime before Sept. 9, 1987
sometime in 1987
January to March and May 2007
8am, except Mondays 9 am
the following month
the second Tuesday after Easter
two consecutive Sundays
today
three Mondays
all Mondays in every May
all Mondays in any May
any Monday in every May
the courses when the student has free time
We met in July last year
On Monday and Tuesday
three months earlier
from 3pm to 6pm
They are leaving on vacation two weeks from next Tuesday.
A major earthquake struck Los Angeles three years ago today.
This year’s summer was unusually hot.
Bacon tutored an English student some Thursdays in 1998.
She spent the following twelve years in various health care positions around Minnesota.
Ash Wednesday
Easter Sunday
Christmas Day
Adnan Pachachi, a onetime foreign minister who returned to Iraq on May 6 after 33 years in exile...
Yeah. I'm leaving on Monday and coming back on the thirtieth, so um
```

## Introduction

- **Fully specified temporal expressions**, which provide all the information necessary in order to identify the point or period of time they are referring to; e.g., June 11, 1989, or the Summer of 2002.
- **Underspecified temporal expressions**, which require the use of some contextual infor- mation in order to interpret the point in time they are referring to; e.g., early in the morning, Monday, in recent days, few days ago, two weeks from next Tuesday, next September, the current month, last year, a decade ago.
- **Durations**, such as: three months and two years.
- DANTE is a rule-based system that consists of two main processing modules: a recognizer and an interpreter. The recognizer finds occurrences of temporal expressionsin documents, determines their full extents in text, and analyses their local meaning to generate their LTIMEX values. Then, for each recognized temporal expression the interpreter determines its global semantic value.
- SUTIME is a rule-based temporal tagger built on regular expression patterns. Temporal expressions are bounded in their complexity, so many of them can be captured using ﬁnite automata. As shown by systems such as FASTUS (Hobbs et al., 1997), a cascade of ﬁnite automata can be very effective at extracting information from text. With SUTIME, we follow a similar staged strategy of (i) building up patterns over individual words to ﬁnd numerical expressions; then (ii) using patterns over words and numerical expressions to ﬁnd simple temporal expressions; and ﬁnally (iii) forming composite patterns over the discovered temporal expressions.

## Research

- [From Conceptual Time to Linguistic Time](http://acl.ldc.upenn.edu/J/J96/J96-1004.pdf)
- [Semantics of Time-Varying Information](https://www.cs.arizona.edu/people/rts/pubs/ISJune96.pdf)
- [Reasoning across time and the syntacticization of semantics](http://cusp.ucsd.edu/pdf/djalali_h.pdf) (has example sentences)
- [TIMEN: An Open Temporal Expression Normalisation Resource](http://www.derczynski.com/sheffield/papers/timen.pdf)
- [Massively Increasing TIMEX3 Resources: A Transduction Approach](http://arxiv.org/pdf/1203.5076v1.pdf)
- [TIDES 2005 Standard for the Annotation of Temporal Expressions](http://projects.ldc.upenn.edu/ace/docs/English-TIMEX2-Guidelines_v0.1.pdf)
- [ACE Time Normalization (TERN) 2004 English Evaluation Data V1.0](http://www.ldc.upenn.edu/Catalog/catalogEntry.jsp?catalogId=LDC2010T18)
- [Broad-Coverage Rule-Based Processing of Temporal Expressions](http://web.science.mq.edu.au/~mpawel/thesis/MazurPawel_2012_PhD.pdf) (PhD Thesis from 2012, SOLID)
- http://www.slideshare.net/leonderczynski/timen-an-open-temporal-expression-normalisation-resource
- [A Pilot Study on Annotating Temporal Relations in Text](http://www.aclweb.org/anthology-new/W/W01/W01-1311.pdf)
- [A Time Calculus for Natural Language (TCNL)](http://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=3&ved=0CEgQFjAC&url=http%3A%2F%2Fwww.cs.cmu.edu%2F~benhdj%2FPublications%2FPublished%2Ficos-4.ps.gz&ei=DV6cUNGdJqSXiQL69oGICw&usg=AFQjCNHURGtaXC8sNfBgtF2QfAG4FFEQuQ&sig2=_j4tlh2yMouTvOe5B_SU1g)
- http://tsi.wfubmc.edu/labs/strait/StaRAI/accepted/khot.pdf
- [The Annotation of Temporal Information in Natural Language Sentences](http://acl.ldc.upenn.edu/W/W01/W01-1315.pdf)
- [A Corpus-based Study of Temporal Signals](http://arxiv.org/pdf/1203.5066.pdf)
- [The Language of Time (Book)](http://www.amazon.com/The-Language-Time-A-Reader/dp/0199268541)
- [Developing Language Processing Components with GATE - Version 7](http://gate.ac.uk/sale/tao/index.html#x1-1880008) (and JAPE)
- [JAPE: Regular Expressions over Annotations](http://gate.ac.uk/sale/tao/splitch8.html#chap:jape)
- [FASTUS: A Cascaded Finite-State Transducer for Extracting Information from Natural-Language Text](http://www.ai.sri.com/~appelt/fastus-schabes.html)
- [Named Entity Extraction from Speech](http://reference.kfupm.edu.sa/content/n/a/named_entity_extraction_from_speech__app_114336.pdf)
- http://www.stanford.edu/class/cs124/lec/Information_Extraction_and_Named_Entity_Recognition.pdf
- [SUTIME: A Library for Recognizing and Normalizing Time Expressions](http://nlp.stanford.edu/pubs/lrec2012-sutime.pdf)

## Corpora

- http://timeml.org/site/timebank/timebank.html (the tempeval2 download has great docs on how to parse events)
- http://timexportal.wikidot.com/corpora
- http://www.timexportal.info/wikiwars/

## Notes

- Currently, the standard temporal annotation scheme is TimeML which includes a speciﬁcation of the TIMEX3 standard.
  - Explicit, absolute, or self-contained: These can be directly translated to a particular granularity date/time.
  - Implicit, relative, or context-dependent: These need the document creation time (deictic) or a previously mentioned temporal reference/anchoring (anaphoric) to obtain a explicit date/time.
  - Durative: Describing a bounded interval (or duration) that is not inherently anchored to a timeline.
  - Set or frequency: Regularly recurring times, such as “every Christmas” or “each Tuesday”.
  - Vague: generic mentions like “recently” or “today” in “today’s fashions”; see TIDES standard Section 4.6 (Ferro et al., 2005).

## Projects/Code

- http://grepcode.com/file/repo1.maven.org/maven2/edu.stanford.nlp/stanford-corenlp/1.3.2/edu/stanford/nlp/time/SUTime.java#SUTime.0SUMMER_SOLSTICE
- http://code.google.com/p/timen/source/browse/trunk/TIMEN/src/TIMEN/TIMEN.java
- http://joda-time.sourceforge.net/
- https://github.com/JodaOrg/joda-time
- https://github.com/JodaOrg/joda-time/tree/master/src/main/java/org/joda/time
- http://joda-time.sourceforge.net/userguide.html
- http://joda-time.sourceforge.net/field.html
- http://www.slideshare.net/chenshuo/datetime-julian-date
- https://github.com/visionmedia/ejs/blob/master/ejs.js
- http://grepcode.com/file/repo1.maven.org$maven2@edu.stanford.nlp$stanford-corenlp@1.3.2@edu$stanford$nlp$time$GenericTimeExpressionPatterns.java
- http://grepcode.com/file/repo1.maven.org/maven2/edu.stanford.nlp/stanford-corenlp/1.3.2/edu/stanford/nlp/time/SUTime.java#SUTime.0SUMMER_SOLSTICE
- http://grepcode.com/file/repo1.maven.org/maven2/edu.stanford.nlp/stanford-corenlp/1.3.2/edu/stanford/nlp/ling/tokensregex/types/ValueFunctions.java#ValueFunctions.0CREATE_REGEX_FUNCTION


## Keywords

- timex / timexes
- temporal expressions
- Timex Normalisation Taxonomy
- "natural language" morphological corpus independent filetype:pdf
- DANTE (Detection and Normalisation of Temporal Expressions)

### Terms

- [time scales](http://en.wikipedia.org/wiki/Time_standard)
- [periodization](http://en.wikipedia.org/wiki/Periodization)
- [epoch](http://en.wikipedia.org/wiki/Epoch_(reference_date)): reference date/moment in time.
- [time](http://en.wikipedia.org/wiki/Time#Measurement)
- [chronology](http://en.wikipedia.org/wiki/Chronology): Another form of time measurement consists of studying the past. Events in the past can be ordered in a sequence (creating a chronology), and can be put into chronological groups (periodization). One of the most important systems of periodization is geologic time, which is a system of periodizing the events that shaped the Earth and its life. Chronology, periodization, and interpretation of the past are together known as the study of history.
- calendar
- [era](http://en.wikipedia.org/wiki/Era): long period of time, delimited by a start event and an end event.
- The Julian date 2451545.0 TT (Terrestrial Time).
- January 1, 2000, 11:59:27.816 TAI (International Atomic Time).
- January 1, 2000, 11:58:55.816 UTC ([Coordinated Universal Time](http://en.wikipedia.org/wiki/Coordinated_Universal_Time)). This is the primary time standard
- [coordinate time](http://en.wikipedia.org/wiki/Coordinate_time)
- [proper time](http://en.wikipedia.org/wiki/Proper_time)
- [reference frame](http://en.wikipedia.org/wiki/Frame_of_reference)
- [radiometric dating](http://en.wikipedia.org/wiki/Radiometric_dating)
- [relative dating](http://en.wikipedia.org/wiki/Relative_dating)
- [geologic time](http://en.wikipedia.org/wiki/Geologic_time)
- [geologic time scale](http://en.wikipedia.org/wiki/Geologic_time_scale): Supereon, Eon, Era, Period, Epoch, Age
- http://en.wikipedia.org/wiki/Global_Boundary_Stratotype_Section_and_Point
- [Terminology of geological time: Establishment of a community standard](http://www.agiweb.org/nacsn/40890_articles_article_file_1641.pdf)
- [cosmological time](http://en.wikipedia.org/wiki/Cosmological_time)
- [temporal resolution](http://en.wikipedia.org/wiki/Temporal_resolution)
- [annum](http://en.wikipedia.org/wiki/Annum)
- [unit of time](http://en.wikipedia.org/wiki/Unit_of_time)
- http://en.wikipedia.org/wiki/List_of_calendars

Really, ancient times should be constructed based on the layers in the geological record, atom concentrations, etc. So maybe like:

``` javascript
// this is saying the _result_ they've told us based on their dating:
var originOfLife = new Time(new Period(-3.5, 'ba'));
// but maybe:
var originOfLife = new Time(new Period({radiometricDatingOf: 'meteorite', ...}));
```

## Anti-date examples

Things that seem like they could trip up the parser (randomly jotted down):

```
- I am exercising my state and federal constitutional rights including the 1st, 4th and 5th amendments.
```

## Todo

- logarithmic/exponential time scales
- be able to get dates for http://en.wikipedia.org/wiki/Geologic_time_scale
  - you should be able to pass in the geologic time scale classification/name, in addition to say "50 mya", so we can adjust for errors.
