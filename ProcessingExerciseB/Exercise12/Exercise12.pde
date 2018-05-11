/********************************
 Exercise 11
 Written by Koby W.
 May 10 2018
 
 *Not Finished*
 
 This program loads text files and reads them to determine a certain amount of characters.
 *********************************/

void settings() {
  size(300, 300);
}

void setup() {
  println(numberOfLetterT("hamlet.txt"));
}

int numberOfLetterT(String fileToCheck) {
  int amountOfTs = 0;
  char [] letters = fileToCheck.toCharArray();
  for (int i = 0; i < letters.length; i++) {
    if (letters[i] == 't' || letters[i] == 'T') {
      amountOfTs += 1;
    }
  }
  return amountOfTs;
}