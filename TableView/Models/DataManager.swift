//  DataManager.swift
//  TableView

import UIKit

class DataManager {
    
    var movieDataArray: [Movie] = []
    
    func makeMovieData() {
        movieDataArray = [
            Movie(movieImage: UIImage(named: "batman"),
                  movieName: "배트맨",
                  movieDescription: "어릴 적 부모가 무참히 살해당하는 장면을 목격해야 했던 백만장자 자선가 브루스 웨인은 배트맨으로 자신의 정체를 숨긴 채 범죄의 도시인 고담시티에서 악행을 쫓는다. 배트맨은 고담시티의 모든 악행의 배후자인 조커와 맞서기 위해 고군분투한다."),
            
            Movie(movieImage: UIImage(named: "captain"),
                  movieName: "캡틴 아메리카",
                  movieDescription: "약한 몸과 달리 강인한 정신력을 가지고 있던 스티브, 그는 슈퍼 솔져 프로젝트에 지원하고 곧 인간의 한계를 뛰어넘는 엄청난 신체능력을 갖게 된다. 한편 하이드라 조직은 그 기술을 가로채 세상을 위험에 빠뜨릴 계략을 구상하고 있다."),
            
            Movie(movieImage: UIImage(named: "ironman"),
                  movieName: "아이언맨",
                  movieDescription: "화려한 삶을 살아가던 무기업체 CEO 토니 스타크는 신무기 발표를 마치고 돌아가던 길에 게릴라 군에게 납치되고 철갑수트를 제작해 탈출한다. 자신이 만든 무기가 많은 사람들의 생명을 위협했다는 사실을 깨달은 그는 무기사업을 그만둔다고 발표한다."),
            
            Movie(movieImage: UIImage(named: "thor"),
                  movieName: "토르",
                  movieDescription: "아스가르드의 왕 오딘은 자만심 넘치는 그의 아들 토르의 강력한 무기 묠니르를 뺏고 지구로 추방한다. 지구에 온 토르는 묠니르를 발견하고 가져가려 하지만, 곧 지구의 방패막 쉴드에게 붙잡힌다."),
            
            Movie(movieImage: UIImage(named: "hulk"),
                  movieName: "헐크",
                  movieDescription: "브루스 배너는 감마선이 생명체에 미치는 영향에 대해 연구하는 과학자다. 든든한 팀원들과 함께 연구를 이어가던 어느 날, 잠깐의 실수로 치사량 이상의 감마선이 그를 통과한다. 사고 이후부터 몸에서 감지되는 치명적인 변화들, 배너는 이를 점점 받아들이며 녹색 괴물 헐크가 되어간다."),
            
            Movie(movieImage: UIImage(named: "spiderman"),
                  movieName: "스파이더맨",
                  movieDescription: "어릴 적 사라진 부모 대신 삼촌 내외와 사는 평범한 고등학생 피터 파커는 어느 날, 아버지의 수상한 가방을 발견하고 부모님의 실종 사건에 대한 의심을 하게 된다."),
            
            Movie(movieImage: UIImage(named: "blackpanther"),
                  movieName: "블랙 팬서",
                  movieDescription: "아버지의 죽음 뒤 와칸다의 왕위를 계승한 티찰라, 곧 와칸다의 비브라늄과 그의 자리를 노리를 숙적들이 등장한다. 숙적들은 세상을 위협하기 시작하고, 티찰라는 이들과 아버지 사이에 얽힌 진실을 알게 된다."),
            
            Movie(movieImage: UIImage(named: "doctorstrange"),
                  movieName: "닥터 스트레인지",
                  movieDescription: "유명한 신경외과 의사 스티븐 스트레인지는 사고로 그의 손을 쓸 수 없게 되자, 손을 고치기 위해 에이션트 원을 찾아간다. 거듭된 훈련으로 위대한 마법사가 된 닥터 스트레인지는 지구를 위협하는 사악한 세력에 맞서기 시작한다."),
            
            Movie(movieImage: UIImage(named: "guardians"),
                  movieName: "가디언즈 오브 갤럭시",
                  movieDescription: "우주를 떠돌며 도적질하는 피터 퀼은 고대 유물 오브를 훔치기 위해 한 행성에 잠입하고, 예기치 않게 우주를 위협하는 절대 악 타노스와 로난의 표적이 된다. 퀼은 오브를 손에 넣지만 그를 방해하려는 존재들과 싸우다 감옥에 갇히고 만다.")
        ]
    }
    
    // ViewController에서 영화 데이터 요청 시 영화 배열 리턴
    func getMovieData() -> [Movie] {
        return movieDataArray
    }
    
    func updateMovieData() {
        let movie = Movie(movieImage: UIImage(named: "spiderman2"),
                          movieName: "스파이더맨2",
                          movieDescription: "스파이더맨의 필요성을 인정한 피터 파커는 위험에 처한 시민을 구하고 사랑하는 그웬과 데이트를 하며 시간을 보낸다. 한편 스파이더맨을 동경하던 엔지니어 맥스는 어느 날 돌이킬 수 없는 사고를 당하고, 곧 그에게 특별한 능력이 생긴다.")
        
        movieDataArray.append(movie)
    }
}
