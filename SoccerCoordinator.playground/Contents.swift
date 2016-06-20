//
// First project
// Jon Maldia
// 2016-06-18
// Soccer Coordinator
//

// Array of children and their corresponding height
let height: [String: Int] = [
    "Joe Smith": 42,
    "Jill Tanner": 36,
    "Bill Bon": 43,
    "Eva Gordon": 45,
    "Matt Gill": 40,
    "Kimmy Stein": 41,
    "Sammy Adams": 45,
    "Karl Saygan": 42,
    "Suzanne Greenberg": 44,
    "Sal Dali": 41,
    "Joe Kavalier": 39,
    "Ben Finkelstein": 44,
    "Diego Soto": 41,
    "Chloe Alaska": 47,
    "Arnold Willis": 43,
    "Phillip Helm": 44,
    "Les Clay": 42,
    "Herschel Krustofski": 45
]

// Array of children and their corresponding Soccer Experience
let soccerExperience: [String: String] = [
    "Joe Smith": "YES",
    "Jill Tanner": "YES",
    "Bill Bon": "YES",
    "Eva Gordon": "NO",
    "Matt Gill": "NO",
    "Kimmy Stein": "NO",
    "Sammy Adams": "NO",
    "Karl Saygan": "YES",
    "Suzanne Greenberg": "YES",
    "Sal Dali": "NO",
    "Joe Kavalier": "NO",
    "Ben Finkelstein": "NO",
    "Diego Soto": "YES",
    "Chloe Alaska": "NO",
    "Arnold Willis": "NO",
    "Phillip Helm": "YES",
    "Les Clay": "YES",
    "Herschel Krustofski": "YES"
]

// Array of children and their corresponding Guardian Names
let guardianNames: [String: String] = [
    "Joe Smith": "Jim and Jan Smith",
    "Jill Tanner": "Clara Tanner",
    "Bill Bon": "Sara and Jenny Bon",
    "Eva Gordon": "Wendy and Mike Gordon",
    "Matt Gill": "Charles and Sylvia Gill",
    "Kimmy Stein": "Bill and Hillary Stein",
    "Sammy Adams": "Jeff Adams",
    "Karl Saygan": "Heather Bledsoe",
    "Suzanne Greenberg": "Henrietta Dumas",
    "Sal Dali": "Gala Dali",
    "Joe Kavalier": "Sam and Elain Kavalier",
    "Ben Finkelstein": "Aaron and Jill Finkelstein",
    "Diego Soto": "Robin and Sarika Soto",
    "Chloe Alaska": "David and Jamie Alaska",
    "Arnold Willis": "Claire Willis",
    "Phillip Helm": "Thamas Helm and Eva Jones",
    "Les Clay": "Wynonna Brown",
    "Herschel Krustofski": "Hyman and Rachel Krustofski"
]

// This will store all the players and their respective team
var soccerLeagueTeams: [String: String] = [:]

// Array to temporarily divide players by their experience
var yesPlayers: [String: String] = [:]
var noPlayers: [String: String] = [:]

// Loops through
for (player, experience) in soccerExperience {
    if experience == "YES" {
        yesPlayers[player] = "YES"
    } else {
        noPlayers[player] = "NO"
    }
}
print(yesPlayers)
print(noPlayers)

// Pseudo code
// Use 3 counters for each team
// If equal, add player to team 1
// If team 1 is greater than team 2 and team 3, add to team 2
// Else add to team 3

// Code to divide up teams by YES experience
var yesCounter1: Int = 0
var yesCounter2: Int = 0
var yesCounter3: Int = 0

for (player, experience) in yesPlayers {
    if yesCounter1 == yesCounter2 && yesCounter2 == yesCounter3 {
        soccerLeagueTeams[player] = "Dragons"
        yesCounter1 += 1
    } else if yesCounter1 > yesCounter2 && yesCounter1 > yesCounter3 {
        soccerLeagueTeams[player] = "Sharks"
        yesCounter2 += 1
    } else {
        soccerLeagueTeams[player] = "Raptors"
        yesCounter3 += 1
    }
}

print(soccerLeagueTeams)

// Code to divide up teams by NO experience
var noCounter1: Int = 0
var noCounter2: Int = 0
var noCounter3: Int = 0

for (player, experience) in noPlayers {
    if noCounter1 == noCounter2 && noCounter2 == noCounter3 {
        soccerLeagueTeams[player] = "Dragons"
        noCounter1 += 1
    } else if noCounter1 > noCounter2 && noCounter1 > noCounter3 {
        soccerLeagueTeams[player] = "Sharks"
        noCounter2 += 1
    } else {
        soccerLeagueTeams[player] = "Raptors"
        noCounter3 += 1
    }
}

print(soccerLeagueTeams)

// Code to print a letter to the guardian(s)
for (player, guardian) in guardianNames {
    print("Dear \(guardianNames[player]),")
    print("\n")
    print("Congratulations! \(player) has been placed in the \(soccerLeagueTeams[player]) team.")
    print("\n")
    print("The first practice is on:")
    
    if soccerLeagueTeams[player] == "Dragons" {
        print("March 17 at 1PM")
    } else if soccerLeagueTeams[player] == "Sharks" {
        print("March 17 at 3PM")
    } else {
        print("March 18 at 1PM")
    }
    
    print("\n")
    print("Please bring all necessary equipment and uniform on practice day.")
    print("\n")
    print("See you there!")
    print("\n")
    print("\n")
    print("Best regards,")
    print("\n")
    print("\n")
    print("Coach Jon")
}