//  ViewController.swift
//  TableView

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    // TableView의 데이터를 표시하기 위한 배열
    var moviesArray: [Movie] = []
    
    // MVC 패턴을 위한 데이터 매니저 (배열 관리 - 데이터)
    var movieDataManager = DataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "영화 목록"
        setupTableView()
        setupDatas()
    }
    
    func setupTableView() {
        // 델리게이트 패턴 두 가지 설정: tableView의 대리자는 self(ViewController)
        tableView.dataSource = self
        tableView.delegate = self
        // tableView의 각 cell의 높이 설정
        tableView.rowHeight = 120
    }
    
    func setupDatas() {
        // 영화 구조체 배열을 만들고 할당 (일반적으로는 서버에 요청)
        movieDataManager.makeMovieData()
        // 영화 데이터 요청 후 배열에 저장
        moviesArray = movieDataManager.getMovieData()
    }
    
    @IBAction func addButtonTapped(_ sender: UIBarButtonItem) {
        // 영화 데이터 추가
         movieDataManager.updateMovieData()
        // 다시 영화 데이터 받아서 ViewController의 배열에 저장
         moviesArray = movieDataManager.getMovieData()
        // tableView 다시 불러오기
        tableView.reloadData()
    }
}

// MARK: - UITableViewDataSource 프로토콜 채택
extension ViewController: UITableViewDataSource {
    
    // 1) tableView가 몇 개의 테이블 뷰 셀을 표시할지 ViewController에 물어봄
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        return moviesArray.count
    }
    
    // 2) tableView가 몇 번째 행에 있는 셀을 어떤 방식으로 표시할지 ViewController에 물어봄
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function)
        
        // 힙에 올라간 재사용 가능한 셀을 꺼내서 사용하는 메서드
        // 스토리보드로 만드는 경우 사전에 셀을 등록하는 과정이 내부 메커니즘 존재
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        
        cell.mainImageView.image = moviesArray[indexPath.row].movieImage
        cell.movieNameLabel.text = moviesArray[indexPath.row].movieName
        cell.descriptionLabel.text = moviesArray[indexPath.row].movieDescription
        cell.selectionStyle = .none // 클릭 했을 때 색깔
        
        return cell
    }
}

// MARK: - UITableViewDelegate 프로토콜 채택
extension ViewController: UITableViewDelegate {
    
    // 몇 번째 셀이 선택되었을 때 어떤 동작을 할지 ViewController에 물어봄
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 세그웨이를 통해 다음 화면으로 가기 (스토리보드)
        performSegue(withIdentifier: "toDetail", sender: indexPath)
    }
    
    // prepare 세그웨이 (데이터 전달)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            let detailVC = segue.destination as! DetailViewController
            let index = sender as! IndexPath
            
            // 배열에서 영화 데이터를 꺼내서, 다음 화면으로 전달
            detailVC.movieData = moviesArray[index.row]
        }
    }
}
