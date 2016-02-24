
library geology, Earth Sciences
library anthropology, Anthropology

keywords
  california geology
  book http://www.amazon.com/California-Geology-Edition-Deborah-Harden/dp/013100218X
    has good reviews
    # get citation for author
    library geology
      code QE89 .H37 2004

book Geology of the Sierra Nevada
  link http://www.amazon.com/Geology-Sierra-California-Natural-History/dp/0520236963/ref=pd_sim_14_6?ie=UTF8&dpID=51JKlLFn6YL&dpSrc=sims&preST=_AC_UL160_SR99%2C160_&refRID=0WV92ADEJ1D2978D0AXT
  library geology, QE90.S5 H54 2006

# this is ugly because, really, it is data
# there is a generic book model, and then all of this data!
# so we should just be able to create a list of data from a query, essentially
book Introduction to Earth, Soil, and Land in California
  link http://www.amazon.com/Introduction-California-Natural-History-Guides/dp/0520266811/ref=pd_sim_14_9?ie=UTF8&dpID=51XYMDpseWL&dpSrc=sims&preST=_AC_UL160_SR100%2C160_&refRID=0JDHNZN5JP3Q3VK00828
  library geology, code QH105.C2 C366 2010

book California Indians and their environment : an introduction
  link http://www.amazon.com/California-Indians-Their-Environment-Introduction/dp/0520256905
  library anthropology

book The Archaeology of Maritime Landscapes
  library anthropology, CC77.U5 A73 2011
    link http://www.amazon.com/Archaeology-Maritime-Landscapes-When-Meets/dp/1461428882

book The Ohlone, past and present : native Americans of the San Francisco Bay region
  link http://www.amazon.com/The-Ohlone-Past-Present-Anthropological/dp/0879191295
  library anthro, E99.C8744 O45 1994

book The complete Ice Age : how climate change shaped the world
  link http://www.amazon.com/The-Complete-Ice-Age-Climate/dp/0500051615
  library anthro, QE697 .C67 2009

book An Analysis of Ice Age Art: Its Psychology and Belief System
  link http://www.amazon.com/Analysis-Ice-Age-Art-Psychology/dp/082041557X
  library anthro, GN811 .S65 1992

book First peoples in a new world : colonizing ice age America
  link http://www.amazon.com/First-Peoples-New-World-Colonizing/dp/0520267990
  library anthro, E77.9 .M45 2009

book From foraging to agriculture : the Levant at the end of the Ice Age
  link http://www.amazon.com/From-Foraging-Agriculture-The-Levant/dp/0812281373
  library anthro, GN776.32.M628 H451 1989

book The Pleistocene : geology and life in the quaternary Ice Age
  link http://www.amazon.com/The-Pleistocene-Geology-Life-Quaternary/dp/9027714665
  library anthro, QE697 .N545 1983

book Maps of the Ancient Sea Kings: Evidence of Advanced Civilization in the Ice Age
  link http://www.amazon.com/Maps-Ancient-Sea-Kings-Civilization/dp/0932813429
  library anthro, GA300 .H3

book Origin and Evolution of Earth: Principles of Historical Geology 1st Edition
  link http://www.amazon.com/Origin-Evolution-Earth-Principles-Historical/dp/0134918207
  library geo, QE28.3 .C65 1998

book A short history of planet earth : mountains, mammals, fire, and ice
  note this is it!
  todo Practice speaking this like an audiobook
  library geo, QE28.3 .M33 1996
  link http://www.amazon.com/Short-History-Planet-Earth-Mountains/dp/1620457105

book Earth Systems history
  link http://www.amazon.com/Earth-System-History-Steven-Stanley/dp/1429205202
  library geo, QE28.3 .S735 2005

book The formation of the solar system : theories old and new / Michael M. Woolfson, University of York, UK.
  library physics, QB503 .W659 2015
  link http://www.amazon.com/The-Formation-Solar-System-Theories/dp/1860948243

books on algorithm
  book Structural Geology Algorithms
    link http://www.amazon.com/Structural-Geology-Algorithms-Vectors-Tensors/dp/1107401380/ref=pd_sim_14_6?ie=UTF8&dpID=51oyhbjOXjL&dpSrc=sims&preST=_AC_UL160_SR123%2C160_&refRID=1DS8Q5V61NTYY1SCMAHG
    library geo, QE601.3.M38 A45 2012

books eventually
  book Introduction to Mineralogy
    link http://www.amazon.com/Introduction-Mineralogy-William-Nesse/dp/0199827389/ref=pd_sim_14_2?ie=UTF8&dpID=51EgMjrQZBL&dpSrc=sims&preST=_AC_UL160_SR125%2C160_&refRID=0EMZMPJV2TFM4CJ2P3WV

books interesting
  book Before California : an archaeologist looks at our earliest inhabitants
    link http://www.amazon.com/Before-California-Archaeologist-Earliest-Inhabitants/dp/0759103747
  book Early hunter-gatherers of the California coast / Jon M. Erlandson.
  book Indians, missionaries, and merchants : the legacy of colonial encounters on the California frontiers
    library anthro, E78.C15 L47 2005
  book Elements of culture in native California.
    link http://soda.sou.edu/awdata/030512f1.pdf
  book The art of the shaman : rock art of California
    link http://www.amazon.com/Art-The-Shaman-David-Whitley/dp/087480650X
  book Handbook of the Indians of California
    link http://www.amazon.com/California-Illustrations-Smithsonian-Institution-Ethnology/dp/0486233685/ref=pd_sim_14_1?ie=UTF8&dpID=51tx5XRGcBL&dpSrc=sims&preST=_AC_UL160_SR101%2C160_&refRID=0DVFR6ASB3SXN1JNDN73
    library anthro,  E78.C15 K781 1972  v.1
  book Subsistence Economies of Indigenous North American Societies: A Handbook
    link http://www.amazon.com/Subsistence-Economies-Indigenous-American-Societies/dp/193562301X
    library anthro, E98.S7 S83 2011
  book : Modeling time and transition in prehistory : the Jordan Valley Chalcolithic (5500-3500 BC) / Mark Blackham.

feature
  when visit oskicat
    ask Do you want to save this book?
      when yes
        extract code, from book code # TODO: implement low-level action for crawling page
        save code, to record, for book

feature
  At the end of this session, when I save the books, it sends me an email with all the books to lookup in berkeley :)

tip
  search [topic], in library anthropology
  search [topic], in library geology

In the videos, when something isnt fully understood, really dig into the problems are, and the things wed need to do to get closer to understanding them. Paint a picture of the todo list sort of, so they can see the problem. I just help think of them. I just ask questions whenever, and says stuff like "we'd have to figure that out."

writtenrecord.org
humanachievement.org
humaneffort.org
humanfruit.org
humanwaves.org
humansteps.org

HumanSteps is a database of humans, their contributions to history, and the way they saw the world.

https://en.wikipedia.org/wiki/Evolution_of_human_intelligence#Models
