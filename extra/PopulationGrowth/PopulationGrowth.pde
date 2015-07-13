// stores ages of a population
ArrayList<Integer> people;

void setup() {
  people = new ArrayList<Integer>();
  for (int i = 0; i < 10; i++)
    people.add(18);
}

void draw() {
  for (int i = 0; i < people.size(); ) {
    int person = people.get(i);
    
    // increment age
    person++;
    // person has a 3% chance of dying
    if (random(100) < 3) {
      people.remove(i);
    }
    // update age in ArrayList
    else {
      person++;
      
      i++;
    }
  }
}
