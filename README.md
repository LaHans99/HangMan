# Hangman
                                                                                                                  THE HANGMAN
Hannia Ortega Samaniego 
A01283410
Guillermo Daniel Ceballos Anguiano
A01732113

Language of Programming
Teacher: Gilberto Echeverría Furió
 
 	Project description
 
Hangman is two or more players’ games, a guessing game to think of different words and try to guess it by entering letters one by one, with a limited number of guesses. 
 
The goal is to guess the word before the character is hanged, the puzzle giver thinks of a word and draws a row of lines, representing each letter of the word, the other player guesses until the fill in the word or lose.
The puzzle giver will not change the word in the middle or the end of the game 
Each time a player gives a correct letter, and is guessed from the word, the puzzle giver fills in all the corresponding empty dashes of that letter, if the letter doesn’t belong to the word, the game will show a message to the player “Choose another letter from the alphabet”
 
	RULES
	
1.Choose a person to be the host: This person that invents the puzzle or word for the other person or persons to solve. They will be tasked to choose a word that the other player or players will need to solve.
 
2.If you are the host, choose a secret word, the other player or players will need to guess your word letter by letter, so choose a word you think will be difficult to guess. Like words with a “z”, “x” or “k” and only a few vowels.
*For longer games you can also choose phrases
 
3. Draw a blank line for each letter in the word. For example, if the executioner chooses the word "zipper," she/he would draw six blanks, one for each letter ( _ _ _ _ _ _ ). The host does not tell anyone else the secret word.
 
4. If you are the player, start guessing! Once the puzzle giver has a word and the players know how many letters they need to guess, like so “Is there an a in the word?”
 
5. Fill the letter in the blanks if the player is guessing correctly.
 
6. The player! Wins! When they guess the correct word. 
 
 
 


Starting With
 
 The following instructions will allow the developer to obtain a functioning clone of the project in their local storage for development and testing purposes. 

Prerequisites
-Github account
-Download and install Git for Windows or MAC like any other computer application. 
-Once downloaded, find the included .exe file and open it to run Git Bash.
-Access to the main project branch (send notice to grant permission request to the project admins)
-Elixir latest installation. 
Installation process guide: https://elixir-lang.org/install.html
-Code editor (visual studio code, atom, sublime text, etc.)
Installations 🔧
-I open git bash, go to the project folder and do a git pull origin master to download progress made by other team members. 
The command is this:
git pull --allow-unrelated-histories origin master
-I work in Elixir and save my progress.
If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `hangman` to your list of dependencies in `mix.exs`:
->Elixir automatic configuration: (From previous README iterations)
```elixir
def deps do
  [
    {:hangman, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/hangman](https://hexdocs.pm/hangman).

 Executing Tasks ⚙️

-Open terminal
-Change the directory file to the one where the project is located
-Open elixir file in code editor
-To run execute command:
	iex.bat -S mix ->for windows
	iex -S mix -> Linux systems and Mac
-Inside iex(1)> to execute as developer:
	Hangman.recursive_man(“{word to guess}”, “{char}”, “{n underscores depending on the word to guess size}”)

example:
	Hangman.recursive_man(“hangman”, “a”, “_______”)

-Inside iex(1)> to execute as user:
	Hangman.play(“{char}”)

example
	Hangman.play(“a”)
 
Analyze the evidence end-to-end 🔩
Testing the program as developer:
	As a developer the program will show the steps taken to run the program  and the logic of the game on display. The developer can learn from the various recursive state instances of the program and how it is running. 
Testing the program as player:
	When testing the program as a player, the expected result shall be the game hiding the behind the scenes working of the game. The user will only see the state of the word, and the number of chances given to the player. The player will only be able to input a char value a certain number of times. The program outcome shall print if the player won or lost and the number of attempts the player took.
Built with and more information
The game was designed in python and made with elixir.
This project will include the topic of Data Processing, creating a project that includes the use of Functional programming, along with the various resources this paradigm of programming provides such as recursion and lists.
As an input the Elixir file shall receive a character, as an outcome the file shall print the character inputted in the place the letter is set in the word.
 
Authors 
Hannia Samaniego - Design in Python, Elixir and implementation.
Daniel Anguiano - Design in Python, Elixir and implementation.
 
About us
Hannia and Daniel, we are students of Tecnológico de Monterrey, and we created this project for the programming languages class, using Data Processing, Functional programming, and lists.
We always try to do our best in our work and our daily lives.

Acknowledgments
We recognize the support and teamwork we put into this project.
We thank the teacher for his knowledge, patience, and teaching.
We thank ourselves for giving our best.

