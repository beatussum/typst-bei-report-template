#import "/src/lib.typ": ensimag

// style thumbnail for light and dark theme
#set page(fill: none)
#let theme = sys.inputs.at("theme", default: "light")
#set rect(stroke: 1pt + white) if theme == "dark"
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
  internship-tutor: [Charles Dupond],
  school-tutor: [Charles Dupont],
)
