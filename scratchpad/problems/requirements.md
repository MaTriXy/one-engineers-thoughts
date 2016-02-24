
- http://en.wikipedia.org/wiki/Non-functional_requirement
- http://en.wikipedia.org/wiki/Function_model


- Chapter 1: 1-12
- Glossary: 511-516
- All end-of-chapter Summaries: 65, 85, 145, 222, 242-243, 277-278, 301, 321-322, 335, 351, 369, 391-392
- Volere template outline: 393-394
- Key elements IMO: 67, 82-84, 223-243, 240-241, 250-261, 329-333, 425-429, 449-457
- Time-permitting, all of Appendix A: 393-471

> The requirements are a pure statement of business needs, without any implementation bias. It is equally important to note that a well-organized requirements process means that requirements, design, and implementation can be done as a number of iterative loops. Each iteration produces some usable functionality. As an outcome of this process, the Requirements Specification provides a complete description of the needed functionality and behavior of the product.

Requirements Gathering == process. Output == Requirements Specification. Is a process an algorithm?

> System Modeling produces working models of the functions and data needed by the product, as well as models of the work to support the requirements process. Product Design turns the abstract specification into a design suitable for the real world. Once built, the product is used, and this real-world experience inevitably provides more new requirements. This diagram should be read as iterative. 

> Requirements gathering and systems modeling have a significant degree of overlapthe requirements gatherer uses models to help find the requirements, and the modeler uses the requirements to help model the functionality and data. Both produce artifacts used to understand and specify requirements. The requirements analysts are busy discovering the business goals, the stakeholders, the work (or business domain), and the desired outcome.

> As the knowledge of the work increases and the business use cases evolve from fuzzy intentions to known quantities, the models become more precise and provide valuable feedback to the requirements gathering. Similarly, the growing knowledge of the requirements feeds the modeling process, enabling the modeling to be more productive. 

> "First of all, failing to write a spec is the single biggest unnecessary risk you take in a software project."
> 
> Source: Joel Spolsky, Joel on Software, Apress/Springer-Verlag, 2004

**A requirement is something the product must do or a quality it must have**

A functional requirement is an action that the product must take if it is to be useful to its users. Functional requirements arise from the work that your stakeholders need to do.

Nonfunctional requirements are qualities the product must have.

requirements vs. design specification

> The sound-bite answer is that requirements are what your program should do, the specifications are how you plan to do it. Specification == solution?
> Another way to look at it is that the requirements represent the application from the perspective of the user, or the business as a whole. The specification represents the application from the perspective of the technical team. Specifications and requirements roughly communicate the same information, but to two completely different audiences.

Requirements == what (readers are business people)
Specification == how (readers are software dev team) == Design Specification

- http://en.wikipedia.org/wiki/Specification_(technical_standard)
- http://en.wikipedia.org/wiki/Specification_and_Description_Language
- http://en.wikipedia.org/wiki/Specification_language
- http://www.informatik.uni-bremen.de/cofi/old/Documents/CASL/Sample/index.html
- http://en.wikipedia.org/wiki/Product_lifecycle
- http://www.continuum.org/~brentb/2167a-did-sdd.html

Requirements are the end states that define a problems. Specs are the solutions. Tells you how to implement. It's like the experimental protocols.

---

### correctness verification

- The Program running on a particular Computer satisfies the Specification
- The Specification, in the context of the given domain properties, satisfies the requirements

### completeness verification

- We discovered all the important requirements
- We discovered all the relevant domain properties

## Design

The design problem is to satisfy design requirements.
