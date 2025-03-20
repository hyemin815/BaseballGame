import Foundation

class BaseballGame {
    func start() {
        let answer = makeAnswer() // 정답을 만드는 함수
        print("< 게임을 시작합니다 >")
        
        while true {
            // 1. 유저에게 입력값을 받음
            print("숫자를 입력하세요")
            guard let inputString = readLine() else { continue }
            
            // 2. 정수로 변환되지 않는 경우 반복문 처음으로 돌아가기
            guard let inputNumber = Int(inputString) else {
                print("올바르지 않은 입력값입니다")
                continue
            }
            
            // 3. 세자리가 아니거나, 0을 가지거나 특정 숫자가 두번 사용된 경우 반복문 처음으로 돌아가기
            let hundreds = inputNumber / 100
            let tens = (inputNumber / 10) % 10
            let ones = inputNumber % 10
            
            if inputNumber < 100 || inputNumber > 999 {
                print("올바르지 않은 입력값입니다")
                continue
            }
            
            if hundreds == 0 || tens == 0 || ones == 0 {
                print("올바르지 않은 입력값입니다")
                continue
            }
            
            if hundreds == tens || tens == ones || hundreds == ones {
                print("올바르지 않은 입력값입니다")
                continue
            }
            
            // 4. 정답과 유저의 입력값을 비교하여 스트라이크/볼을 출력하기
            let answerHundreds = answer / 100
            let answerTens = (answer / 10) % 10
            let answerOnes = answer % 10
            
            var strikes = 0
            var balls = 0
            
            // 스트라이크 계산
            if hundreds == answerHundreds {
                strikes += 1
            }
            if tens == answerTens {
                strikes += 1
            }
            if ones == answerOnes {
                strikes += 1
            }
            
            // 볼 계산
            if hundreds == answerTens || hundreds == answerOnes {
                balls += 1
            }
            if tens == answerHundreds || tens == answerOnes {
                balls += 1
            }
            if ones == answerHundreds || ones == answerTens {
                balls += 1
            }
            
            // 결과 출력
            if strikes == 3 {
                print("정답입니다!")
                break // 만약 정답이라면 break 호출하여 반복문 탈출
            } else if strikes == 0 && balls == 0 {
                print("Nothing")
            } else if strikes > 0 && balls > 0 {
                print("\(strikes)스트라이크 \(balls)볼")
            } else if strikes > 0 {
                print("\(strikes)스트라이크")
            } else if balls > 0 {
                print("\(balls)볼")
            }
        }
    }
    
    func makeAnswer() -> Int {
        
        while true {
            let randomAnswer = Int.random(in: 100...999)
            
            let a = randomAnswer % 10
            let b = (randomAnswer % 100 - a) / 10
            let c = (randomAnswer - (b * 10) - a ) / 100
            
            if (a != b) && (a != c) && (b != c) && a != 0 && b != 0 && c != 0 {
                return randomAnswer
            }
        }
    }
}


let game = BaseballGame()
game.start()
