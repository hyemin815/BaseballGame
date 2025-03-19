// 1에서 9까지의 숫자 중 랜덤으로 서로 다른 임의의 숫자 3자리 출력
// 3자리의 숫자를 입력
// 각 자리의 숫자를 비교
// 같은 자리에 같은 숫자가 있을 경우 스트라이크 출력
// 다른 자리에 같은 숫자가 있는 경우 볼 출력
// 모든 숫자가 다를 경우 Nothing 출력
// 입력 값이 오류일 경우 Error 메세지 출력
// 세 자리 숫자가 모두 일치할 경우 게임 종료

import Foundation

var answer = [Int]()

while answer.count < 3 {
    answer.append(Int.random(in: 1...9))
}

print(answer)
