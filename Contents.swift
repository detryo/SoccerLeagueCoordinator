import UIKit
// Create array with all the players
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

// Array teams
var experienceTeam: [[String: String]] = []
var inexperienceTeam: [[String: String]] = []
var teamDragons: [[String: String]] = []
var teamSharks: [[String: String]] = []
var teamRaptors: [[String: String]] = []

// Array letter
var letter: [[String: String]] = []


// Players into teams of Experence and Inexperience
    for player in players {
        if player["Experience"] == "Yes" {
            experienceTeam.append(player)
        }else {
            inexperienceTeam.append(player)
        }
    }

// Experience players in each of the three teams
    for player in experienceTeam {
        if teamDragons.count <= teamSharks.count && teamSharks.count <= teamRaptors.count && teamRaptors.count <= teamSharks.count {
            teamDragons.append(player)
        }else if teamSharks.count <= teamRaptors.count && teamRaptors.count <= teamDragons.count && teamDragons.count <= teamRaptors.count{
            teamSharks.append(player)
        }else {
            teamRaptors.append(player)
        }
    }

// Inexperience players in each of the three teams
    for player in inexperienceTeam {
        if teamDragons.count <= teamSharks.count && teamSharks.count <= teamRaptors.count && teamRaptors.count <= teamSharks.count {
            teamDragons.append(player)
        }else if teamSharks.count <= teamRaptors.count && teamRaptors.count <= teamDragons.count && teamDragons.count <= teamRaptors.count {
            teamSharks.append(player)
        }else{
            teamRaptors.append(player)
        }
    }

// Create the letters for each team
for player in teamDragons {
    letter.append([player["Name"]! : "Hi \(player["Guardian"]!), \(player["Name"]!) First practice with Team Dragon on March 17th, 1PM \(player["Name"]!) on the first day of practice"])
    
    print("Hi \(player["Guardian"]!), \(player["Name"]!) First practice with Team Dragon on March 17th, 1PM \(player["Name"]!) on the first day of practice")
}

for player in teamSharks {
    letter.append([player["Name"]! : "Hi \(player["Guardian"]!), \(player["Name"]!) First practice with Team Shark on March 17, 3pm \(player["Name"]!) on the first day of practice"])
    
    print("Hi \(player["Guardian"]!), \(player["Name"]!) First practice with Team Shark on March 17, 3pm \(player["Name"]!) on the first day of practice")
}

for player in teamRaptors {
    letter.append([player["Name"]! : "Hi \(player["Guardian"]!), \(player["Name"]!) First practice with Team Raptor on March 18, 1pm \(player["Name"]!) on the first day of practice"])
    
    print("Hi \(player["Guardian"]!), \(player["Name"]!) First practice with Team Raptor on March 18, 1pm \(player["Name"]!) on the first day of practice")
}

