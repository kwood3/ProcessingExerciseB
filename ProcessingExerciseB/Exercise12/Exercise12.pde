/********************************
 Exercise 12
 Written by Koby W.
 May 10 2018
 
 *Not Finished*
 
 This program loads text files and reads them to determine a certain amount of characters.
 The same string function from exercise 11 was used to determine the characters.
 *********************************/



void settings() {
  size(400, 400);
}

void setup() {
  String[] hamlet_ = loadStrings("hamlet.txt");                  //
  String[] illiad_ = loadStrings("illiad.txt");                  //    
  String[] macbeth_ = loadStrings("macbeth.txt");                //
  String[] othello_ = loadStrings("othello.txt");                // Loading text files into string arrays
  String[] romeoAndJuliet_ = loadStrings("romeoAndJuliet.txt");  //
  String[] theOdyssey_ = loadStrings("theOdyssey.txt");          //
  String[] theRepublic_ = loadStrings("theRepublic.txt");        //

  String hamlet = join(hamlet_, "\n");                 //
  String illiad = join(illiad_, "\n");                 //
  String macbeth = join(macbeth_, "\n");               //
  String othello = join(othello_, "\n");               //  Combining arrays into individual strings
  String romeoAndJuliet = join(romeoAndJuliet_, "\n"); //
  String theOdyssey = join(theOdyssey_, "\n");         //
  String theRepublic = join(theRepublic_, "\n");       //


  /*****************
   Printing to console
   *******************/

  println("Amount of Thous in macbeth: ", numberOfThous(macbeth));
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

int numberOfThous(String sentenceChecked) {
  int amountOfThous = 0;
  String[] words = sentenceChecked.split("\\s+");
  for (int i = 0; i < words.length; i++) {
    if (words[i] == "Thou" || words[i] == "thou") {
      amountOfThous++;
    }
  }
  return amountOfThous;
}
