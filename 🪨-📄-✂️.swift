//Rock Paper Scissors
func getUserChoice(userInput: String) -> String {
  // Choice Input
  switch userInput {
    case "rock", "paper", "scissors":
    return userInput
    default:
     return "You can only enter rock, paper, or scissors. Try again."
  }
}

// Opponent Choice
func getComputerChoice() -> String {
  // Randomize Opponent Choice
  let randomNumber = Int.random(in: 0...2)
  switch randomNumber {
    case 0:
    return "rock"
    case 1:
    return "paper"
    case 2:
    return "scissors"
    default:
    return "Something went wrong"
  }
}

func determineWinner(_userChoice: String, _compChoice: String) -> String {
  var decision: String = "It's a tie"
  switch _userChoice {
    case "rock":
    if _compChoice == "paper" {
      decision = "The computer won"
    } else if _compChoice == "scissors" {
      decision = "The user won" 
    }
    case "paper":
    if _compChoice == "rock" {
      decision = "The user won"
    } else if _compChoice == "scissors" {
      decision = "The computer won" 
    }
    case "scissors":
    if _compChoice == "rock" {
      decision = "The computer won"
    } else if _compChoice == "paper" {
      decision = "The user won" 
    }
    default: 
    return "Something went wrong"
  }
  return decision
}

let _userChoice = getUserChoice(userInput: "rock")
let _compChoice = getComputerChoice()

print("You threw \(_userChoice)")
print("The computer threw \(_compChoice)")
print(determineWinner(_userChoice: _userChoice, _compChoice: _compChoice))
