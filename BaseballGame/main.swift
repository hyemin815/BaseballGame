import Foundation

class BaseballGame {
    func start() {
        let answer = makeAnswer()
        print("< 게임을 시작합니다 >")
    }
    
    func makeAnswer() -> Int {
        
        while true {
            var randomAnswer = Int.random(in: 100...999)
            
            let a = randomAnswer % 10
            let b = (randomAnswer % 100 - a) / 10
            let c = (randomAnswer - (b * 10) - a ) / 100
            
            if (a != b) && (a != c) && (b != c) && a != 0 && b != 0 && c != 0 {
                return randomAnswer
            }
        }
    }
}
