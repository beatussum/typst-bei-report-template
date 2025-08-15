#import "/src/lib.typ": ensimag

// style thumbnail for light and dark theme
#let theme = sys.inputs.at("theme", default: "light")
#set text(white) if theme == "dark"

#show: ensimag.with(
  logos: (
    company: rect([MON ENTREPRISE]),
    ensimag: rect([ENSIMAG]),
  ),
  title: [A Typesetting System to Untangle the Scientific Writing Process],
  author: (
    name: "Martin Haug",
    year: [3#super[e] année],
    option: [ISI],
  ),
  period: (
    begin: datetime(year: 1970, month: 01, day: 01),
    end: datetime(year: 1970, month: 03, day: 01),
  ),
  company: (
    name: [mon entreprise],
    address: [
      1 cours Jean Jaurès \
      38000 Grenoble
    ]
  ),
  internship_tutor: [Charles Dupond],
  school_tutor: [Charles Dupont],
  abstract: [
    The process of scientific writing is often tangled up with the intricacies of typesetting, leading to frustration and wasted time for researchers. In this paper, we introduce Typst, a new typesetting system designed specifically for scientific writing. Typst untangles the typesetting process, allowing researchers to compose papers faster. In a series of experiments we demonstrate that Typst offers several advantages, including faster document creation, simplified syntax, and increased ease-of-use.
  ],
  index-terms: ("Scientific writing", "Typesetting", "Document creation", "Syntax"),
)
