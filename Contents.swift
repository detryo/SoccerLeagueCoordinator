import UIKit
// Info Players

var players: [[String: String]] = [
    ["Name": "Joe Smith", "Height": "42", "Experience": "Yes", "Guardian": "Jim and Jan Smith"],
    ["Name": "Jill Tarner", "Height": "36", "Experience": "Yes", "Guardian": "Clara Tanner"],
    ["Name": "Bill Bon", "Height": "43", "Experience": "Yes", "Guardian": "Sara and Jenny Bon"],
    ["Name": "Eva Gordon", "Height": "45", "Experience": "No", "Guardian": "Wendy and Mike Gordon"],
    ["Name": "Matt Gill", "Height": "40", "Experience": "No", "Guardian": "Charles and Sylvia Gill"],
    ["Name": "Kimmy Stein", "Height": "41", "Experience": "No", "Guardian": "Bill and Hillary Stein"],
    ["Name": "Sammy Adams", "Height": "45", "Experience": "No", "Guardian": "Jeff Adams"],
    ["Name": "Karl Saygan", "Height": "42", "Experience": "Yes", "Guardian": "Heather Bledsoe"],
    ["Name": "Suzane Greenberg", "Height": "44", "Experience": "Yes", "Guardian": "Henrietta Dumas"],
    ["Name": "Sal Dali", "Height": "41", "Experience": "No", "Guardian": "Gala Dali"],
    ["Name": "Joe Kavalier", "Height": "39", "Experience": "No", "Guardian": "Sam and Elaine Kavalier"],
    ["Name": "Ben Finkelstein", "Height": "44", "Experience": "No", "Guardian": "Aaron and Jill Finkelstein"],
    ["Name": "Diego Soto", "Height": "41", "Experience": "Yes", "Guardian": "Robin and Sarika Soto"],
    ["Name": "Chloe Alaska", "Height": "47", "Experience": "No", "Guardian": "David and Jamie Alaska"],
    ["Name": "Arnold Willis", "Height": "43", "Experience": "No", "Guardian": "Claire Willis"],
    ["Name": "Phillip Helm", "Height": "44", "Experience": "Yes", "Guardian": "Thomas Helm and Eva Jones"],
    ["Name": "Les Clay", "Height": "42", "Experience": "Yes", "Guardian": "Wynonna Brown"],
    ["Name": "Herschel Krustofski", "Height": "45", "Experience": "Yes", "Guardian": "Hyman and Rachel Krustofski"]
]
// Separate Players

var experiencePlayers: [[String: String]] = []
var inexperiencePlayers: [[String: String]] = []

// Teams

var teamDragons: [[String: String]] = []
var teamSharks: [[String: String]] = []
var teamRaptors: [[String: String]] = []
var letter: [[String: String]] = []

// Separate players with experience and not experience
func league() {
    for theLeague in players {
        if theLeague["Experience"] == "Yes" {
            experiencePlayers.append(theLeague)
        }else {
            inexperiencePlayers.append(theLeague)
        }
    }
}
league()

// Separate players with experience between teams
func experienceTeam() {
    for experience in experiencePlayers {
        if teamDragons.count <= teamSharks.count && teamSharks.count <= teamRaptors.count && teamRaptors.count <= teamDragons.count {
            teamDragons.append(experience)
        }else if teamSharks.count <= teamRaptors.count && teamRaptors.count <= teamDragons.count && teamDragons.count <= teamRaptors.count{
            teamSharks.append(experience)
        }else {
            teamRaptors.append(experience)
        }
    }
}
experienceTeam()

// Separate players without experience between teams
func inexperienceTeam() {
    for inexperience in inexperiencePlayers {
        if teamDragons.count <= teamSharks.count && teamSharks.count <= teamSharks.count && teamSharks.count <= teamDragons.count {
            teamDragons.append(inexperience)
        }else if teamSharks.count <= teamRaptors.count && teamRaptors.count <= teamDragons.count && teamDragons.count <= teamRaptors.count {
            teamSharks.append(inexperience)
        }else{
            teamRaptors.append(inexperience)
        }
    }
}
inexperienceTeam()

// Letter for the guardians
for letterDragon in teamDragons {
    letter.append([letterDragon["Name"]!: "Hello! \(letterDragon["Guardian"]!), \(letterDragon["Name"]!) has first practice Dragons - March 17, 1pm"])
    print(letter)
}

for letterSharks in teamSharks {
    letter.append([letterSharks["Name"]!: "Hello! \(letterSharks["Guardian"]!), \(letterSharks["Name"]!) has first practice Sharks - March 17, 3pm"])
    print(letter)
}

for letterRaptors in teamRaptors {
    letter.append([letterRaptors["Name"]!: "Hello! \(letterRaptors["Guardian"]!), \(letterRaptors["Name"]!) has first practice Raptors - March 18, 1pm"])
    print(letter)
}


