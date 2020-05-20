require "awesome_print"

# An array of hashes

hexagrams = [
  {
    number: 1,
    name: "Creative Heaven",
    variations: ["Force", "Strong Action", "The Key"],
    trigrams: { outer: "heaven", inner: "heaven" }
  },
  {
    number: 2,
    name: "Receptive Earth",
    variations: ["Field", "Acquiescence", "The Flow"],
    trigrams: { outer: "earth", inner: "earth" }
  },
  {
    number: 3,
    name: "Difficulty at the Beginning",
    variations: ["Sprouting", "Gathering Support", "Hoarding"],
    trigrams: { outer: "water", inner: "thunder" }
  },
  {
    number: 4,
    name: "Youthful Folly",
    variations: ["Enveloping", "The Young Shoot", "Discovering"],
    trigrams: { outer: "mountain", inner: "water" }
  },
  {
    number: 5,
    name: "Waiting",
    variations: ["Attending", "Moistened", "Arriving"],
    trigrams: { outer: "water", inner: "heaven" }
  },
  {
    number: 6,
    name: "Conflict",
    variations: ["Arguing", "Lawsuit"],
    trigrams: { outer: "heaven", inner: "water" }
  },
  {
    number: 7,
    name: "The Army",
    variations: ["Leading", "The Troops"],
    trigrams: { outer: "earth", inner: "water" }
  },
  {
    number: 8,
    name: "Holding Together",
    variations: ["Grouping", "Alliance"],
    trigrams: { outer: "water", inner: "earth" }
  },
  {
    number: 9,
    name: "Small Taming",
    variations: ["Small Accumulating", "The Taming Power of the Small", "Small Harvest"],
    trigrams: { outer: "wind", inner: "heaven" }
  },
  {
    number: 10,
    name: "Treading",
    variations: ["Conduct", "Continuing"],
    trigrams: { outer: "heaven", inner: "lake" }
  },
  {
    number: 11,
    name: "Peace",
    variations: ["Pervading", "Greatness"],
    trigrams: { outer: "earth", inner: "heaven" }
  },
  {
    number: 12,
    name: "Standstill",
    variations: ["Obstruction", "Stagnation", "Selfish Persons"],
    trigrams: { outer: "heaven", inner: "earth" }
  },
  {
    number: 13,
    name: "Fellowship",
    variations: ["Concording People", "Fellowship with Others", "Gathering Others"],
    trigrams: { outer: "heaven", inner: "fire" }
  },
  {
    number: 14,
    name: "Great Possession",
    variations: ["Great Possessing", "Possession in Great Measure", "The Great Possession"],
    trigrams: { outer: "fire", inner: "heaven" }
  },
  {
    number: 15,
    name: "Modesty",
    variations: ["Humbling"],
    trigrams: { outer: "earth", inner: "mountain" }
  },
  {
    number: 16,
    name: "Enthusiasm",
    variations: ["Providing-For", "Excess"],
    trigrams: { outer: "thunder", inner: "earth" }
  },
  {
    number: 17,
    name: "Following",
    variations: ["Pursuing", "Leaders Follow"],
    trigrams: { outer: "lake", inner: "thunder" }
  },
  {
    number: 18,
    name: "Work on the Decayed",
    variations: ["Correcting", "Work on what has been Spoiled", "Branch"],
    trigrams: { outer: "mountain", inner: "wind" }
  },
  {
    number: 19,
    name: "Approach",
    variations: ["Nearing", "The Forest",],
    trigrams: { outer: "earth", inner: "lake" }
  },
  {
    number: 20,
    name: "Contemplation",
    variations: ["Viewing", "The View", "Looking Up"],
    trigrams: { outer: "wind", inner: "earth" }
  },
  {
    number: 21,
    name: "Biting Through",
    variations: ["Gnawing Bite", "Biting and Chewing"],
    trigrams: { outer: "fire", inner: "thunder" }
  },
  {
    number: 22,
    name: "Grace",
    variations: ["Adorning", "Luxuriance"],
    trigrams: { outer: "mountain", inner: "fire" }
  },
  {
    number: 23,
    name: "Splitting Apart",
    variations: ["Stripping", "Flaying"],
    trigrams: { outer: "mountain", inner: "earth" }
  },
  {
    number: 24,
    name: "Return",
    variations: ["Returning", "The Turning Point"],
    trigrams: { outer: "earth", inner: "thunder" }
  },
  {
    number: 25,
    name: "Innocence",
    variations: ["Without Embroiling", "The Unexpected", "Pestilence"],
    trigrams: { outer: "heaven", inner: "thunder" }
  },
  {
    number: 26,
    name: "Great Taming",
    variations: ["Great Accumulating", "The Taming Power of the Great", "Potential Energy"],
    trigrams: { outer: "mountain", inner: "heaven" }
  },
  {
    number: 27,
    name: "Jaws",
    variations: ["Swallowing", "Providing Nourishment", "Comfort / Security"],
    trigrams: { outer: "mountain", inner: "thunder" }
  },
  {
    number: 28,
    name: "Great Preponderance",
    variations: ["Great Exceeding", "Great Surpassing", "Critical Mass"],
    trigrams: { outer: "lake", inner: "wind" }
  },
  {
    number: 29,
    name: "The Abysmal Water",
    variations: ["Gorge", "The Abyss", "Repeated Entrapment"],
    trigrams: { outer: "water", inner: "water" }
  },
  {
    number: 30,
    name: "Clinging Fire",
    variations: ["Radiance", "The Net"],
    trigrams: { outer: "fire", inner: "fire" }
  },
  {
    number: 31,
    name: "Influence",
    variations: ["Conjoining", "Wooing", "Feelings"],
    trigrams: { outer: "lake", inner: "mountain" }
  },
  {
    number: 32,
    name: "Persevering",
    variations: ["Duration", "Constancy"],
    trigrams: { outer: "thunder", inner: "wind" }
  },
  {
    number: 33,
    name: "Retiring",
    variations: ["Retreat", "Yielding"],
    trigrams: { outer: "heaven", inner: "mountain" }
  },
  {
    number: 34,
    name: "Great Power",
    variations: ["Great Invigorating", "The Power of the Great", "Great Maturity"],
    trigrams: { outer: "thunder", inner: "heaven" }
  },
  {
    number: 35,
    name: "Progress",
    variations: ["Prospering", "Aquas"],
    trigrams: { outer: "fire", inner: "earth" }
  },
  {
    number: 36,
    name: "Darkening of the Light",
    variations: ["Brilliance Injured", "Intelligence Hidden"],
    trigrams: { outer: "earth", inner: "fire" }
  },
  {
    number: 37,
    name: "The Family",
    variations: ["Dwelling People", "The Clan", "Family Members"],
    trigrams: { outer: "wind", inner: "fire" }
  },
  {
    number: 38,
    name: "Opposition",
    variations: ["Polarizing", "Perversion"],
    trigrams: { outer: "fire", inner: "lake" }
  },
  {
    number: 39,
    name: "Obstruction",
    variations: ["Limping", "Afoot"],
    trigrams: { outer: "water", inner: "mountain" }
  },
  {
    number: 40,
    name: "Deliverance",
    variations: ["Taking-Apart", "Untangled"],
    trigrams: { outer: "thunder", inner: "water" }
  },
  {
    number: 41,
    name: "Decrease",
    variations: ["Diminishing"],
    trigrams: { outer: "mountain", inner: "lake" }
  },
  {
    number: 42,
    name: "Increase",
    variations: ["Augmenting"],
    trigrams: { outer: "wind", inner: "thunder" }
  },
  {
    number: 43,
    name: "Breakthrough",
    variations: ["Displacement", "Resoluteness", "Parting"],
    trigrams: { outer: "lake", inner: "heaven" }
  },
  {
    number: 44,
    name: "Coming to Meet",
    variations: ["Coupling", "Meeting"],
    trigrams: { outer: "heaven", inner: "wind" }
  },
  {
    number: 45,
    name: "Gathering Together",
    variations: ["Clustering", "Massing", "Finished"],
    trigrams: { outer: "lake", inner: "earth" }
  },
  {
    number: 46,
    name: "Pushing Upward",
    variations: ["Ascending"],
    trigrams: { outer: "earth", inner: "wind" }
  },
  {
    number: 47,
    name: "Oppression",
    variations: ["Confining", "Exhaustion", "Entangled"],
    trigrams: { outer: "lake", inner: "water" }
  },
  {
    number: 48,
    name: "The Well",
    variations: ["Welling"],
    trigrams: { outer: "water", inner: "wind" }
  },
  {
    number: 49,
    name: "Revolution",
    variations: ["Skinning", "Molting", "The Bridle"],
    trigrams: { outer: "lake", inner: "fire" }
  },
  {
    number: 50,
    name: "The Cauldron",
    variations: ["Holding"],
    trigrams: { outer: "fire", inner: "wind" }
  },
  {
    number: 51,
    name: "The Arousing Thunder",
    variations: ["Shake", "The Arousing Shock", "Thunder"],
    trigrams: { outer: "thunder", inner: "thunder" }
  },
  {
    number: 52,
    name: "The Keeping Still Mountain",
    variations: ["Bound", "Keeping Still", "Stilling"],
    trigrams: { outer: "mountain", inner: "mountain" }
  },
  {
    number: 53,
    name: "Development",
    variations: ["Infiltrating", "Gradual Progress", "Advancement"],
    trigrams: { outer: "wind", inner: "mountain" }
  },
  {
    number: 54,
    name: "The Marrying",
    variations: ["Converting", "Returning"],
    trigrams: { outer: "thunder", inner: "lake" }
  },
  {
    number: 55,
    name: "Abundance",
    variations: ["Abounding", "Fullness"],
    trigrams: { outer: "thunder", inner: "fire" }
  },
  {
    number: 56,
    name: "The Wanderer",
    variations: ["Sojourning", "Traveling"],
    trigrams: { outer: "fire", inner: "mountain" }
  },
  {
    number: 57,
    name: "The Gentle Wind",
    variations: ["Ground", "Penetrating", "Calculations"],
    trigrams: { outer: "wind", inner: "wind" }
  },
  {
    number: 58,
    name: "The Joyous Lake",
    variations: ["Open", "Usurpation"],
    trigrams: { outer: "lake", inner: "lake" }
  },
  {
    number: 59,
    name: "Dispersion",
    variations: ["Dispersing", "Dissolution", "Dispersal"],
    trigrams: { outer: "wind", inner: "water" }
  },
  {
    number: 60,
    name: "Limitation",
    variations: ["Articulating", "Moderation"],
    trigrams: { outer: "water", inner: "lake" }
  },
  {
    number: 61,
    name: "Inner Truth",
    variations: ["Center Returning", "Central Return"],
    trigrams: { outer: "wind", inner: "lake" }
  },
  {
    number: 62,
    name: "Small Preponderance",
    variations: ["Small Exceeding", "Preponderance of the Small", "Small Surpassing"],
    trigrams: { outer: "thunder", inner: "mountain" }
  },
  {
    number: 63,
    name: "After Completion",
    variations: ["Already Fording", "Already Completed", "Already Done"],
    trigrams: { outer: "water", inner: "fire" }
  },
  {
    number: 64,
    name: "Before Completion",
    variations: ["Not Yet Fording", "Before Completion", "Not Yet Completed"],
    trigrams: { outer: "fire", inner: "water" }
  }
]

ap hexagrams
