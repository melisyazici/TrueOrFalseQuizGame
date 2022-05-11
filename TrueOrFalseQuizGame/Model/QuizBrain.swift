//
//  QuizBrain.swift
//  TrueOrFalseQuizGame
//
//  Created by Melis Yazıcı on 10.02.22.
//

import Foundation

struct QuizBrain {
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Vitamin C is also known by the chemical name of Ascorbic Acid.", a: "True"),
        Question(q: "The Nobel prize-winning novel ‘The Old Man and the Sea’ was written by the American author John Steinbeck.", a: "False"),
        Question(q: "Queen Elizabeth the 1st was the daughter of King Henry the 8th of England.", a: "True"),
        Question(q: "The U.S.A.’s southernmost state is Texas.", a: "False"),
        Question(q: "In theory, it takes over 5,000 helium balloons to lift an average-sized human from the ground. ", a: "True"),
        Question(q: "Coffee is a berry-based beverage.", a: "True"),
        Question(q: "Confucius is a world-renowned Latin philosopher.", a: "False"),
        Question(q: "The longest river in the world is the Amazon River.", a: "False"),
        Question(q: "Polar bears can only live in the Arctic region, not in the Antarctic.", a: "True"),
        Question(q: "The United Kingdom is almost the same size as France.", a: "False"),
        Question(q: "Walt Disney has the record for most Academy Awards.", a: "True"),
        Question(q: "Insulin was discovered by physiologist and professor of medicine Nicolae Paulescu.", a: "True"),
        Question(q: "The continent of Asia is bigger in surface area than the moon.", a: "True"),
        Question(q: "Monaco is the smallest country in the world.", a: "False"),
        Question(q: "Alaska is the biggest American state in square miles.", a: "True"),
        Question(q: "The first Disney princess was Cinderella.", a: "False"),
        Question(q: "The small intestine is about three-and-a-half times the length of your body.", a: "True"),
        Question(q: "In Scotland, the unicorn is their national animal.", a: "True"),
        Question(q: "Zeus is referred to as the king of the Greek gods and goddesses. ", a: "True"),
        Question(q: "In Finding Nemo the protagonist is a pufferfish.", a: "False"),
        Question(q: "The goat is used to symbolize the zodiac sign, Capricorn.", a: "True"),
        Question(q: "Rio de Janeiro is the capital city of Brazil.", a: "False"),
        Question(q: "In a regular deck of cards, all kings have a mustache.", a: "False"),
        Question(q: "When the two numbers on opposite sides of a dice are added together it always equals 7.", a: "True"),
        Question(q: "There is no English word that rhymes with orange.", a: "True"),
        Question(q: "The mosquito has a record for killing more people than any other species in written history. ", a: "True"),
        Question(q: "Bananas are curved due to their upward growth toward the light.", a: "True"),
        Question(q: "Although they love to drink it, cats are lactose intolerant to cow’s milk.", a: "True"),
        Question(q: "There are 14 bones in a human foot.", a: "False"),
        Question(q: "Mamenchisaurus hochuanensis is a dinosaur that has the longest neck and lived in what is now China.", a: "True"),
        Question(q: "Among the letters of the alphabet, only the letter J is not included in the periodic table.", a: "True"),
        Question(q: "An octopus has three hearts.", a: "True"),
        Question(q: "The five rings on the Olympic flag are interlocking.", a: "True"),
        Question(q: "English is one of the official languages of the Philippines. ", a: "True"),
        Question(q: "South Africa officially has two capital cities.", a: "False"),
        Question(q: "Corn is the most widely cultivated and consumed crop on the planet.", a: "True"),
        Question(q: "The world’s best-selling music album of all times belongs to The Beatles.", a: "False"),
        Question(q: "The Atlantic Ocean is the world’s biggest ocean.", a: "False"),
        Question(q: "Dan Brown’s novel ‘Inferno’ was inspired by Dante Alighieri’s poem ‘Inferno’.", a: "True"),
        Question(q: "Nepal is the only country in the world without a rectangular flag.", a: "True"),
        Question(q: "The letter ‘A’ is the most commonly used in the English language. ", a: "False"),
        Question(q: "Switzerland’s currency is the Euro.", a: "False"),
        Question(q: "The USA has the longest coastline in the world.", a: "False"),
        Question(q: "Mount Fuji is the highest mountain in Japan.", a: "True"),
        Question(q: "The Philippines is an archipelagic country that has the most number of islands. ", a: "False"),
        Question(q: "Steak contains more protein than a regular-sized broccoli.", a: "False"),
        Question(q: "Pirates believed that having a ‘calico’ (three-coloured) cat on board of the ship brings bad luck.", a: "False"),
        Question(q: "Put together, a human’s body blood vessels can circle the Earth.", a: "True"),
        Question(q: "The world’s longest word has no less than 189,819 letters and comes from the English language.", a: "True"),
        Question(q: "Athlete Usain Bolt is faster than a cheetah.", a: "False"),
        Question(q: "Indira Gandhi was the first female Prime Minister of India.", a: "True"),
        Question(q: "The lighter was invented before the matches.", a: "True"),
        Question(q: "‘Braveheart’ and ‘The English patient’ have competed for the ‘Academy Award Best Picture’ award in the same year.", a: "False"),
        Question(q: "The first football in the world was manufactured from a pig’s bladder.", a: "True"),
        Question(q: "Just like humans, dogs can be left-pawed or right-pawed.", a: "True"),
        Question(q: "Writer Agatha Christie’s real name is Mary Westmacott.", a: "True"),
        Question(q: "‘The Birds’ (1963 horror movie) was directed by American film director Steven Spielberg.", a: "False"),
        Question(q: "It is illegal to feed pigeons in the Italian city of Venice.", a: "True"),
        Question(q: "The Quetzalcóatl Pyramid in Mexico is bigger than the Great Egyptian Pyramid of Giza.", a: "True"),
        Question(q: "ASOS stands for As Seen On Screen.", a: "True"),
        Question(q: "Meryl Streep has won two Academy Awards.", a: "False"),
        Question(q: "Canis lupur is the scientific name for a wolf.", a: "False"),
        Question(q: "Venus is the hottest planet in the solar system.", a: "True"),
        Question(q: "A cara cara navel is a type of orange.", a: "True"),
        Question(q: "END GAME", a: " ")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        if questionNumber == 0 {
            score = 0
        }
        return score
    }
    
}
