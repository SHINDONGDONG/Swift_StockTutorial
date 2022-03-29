//
//  ArticleService.swift
//  Swift_StockTutorial
//
//  Created by 申民鐡 on 2022/03/29.
//

import Foundation
import Alamofire
import RxSwift

class ArticleService {
    
    //RX Swift를 이용해서 비동기적으로 값을 반환한다.
                       //반환을 article을 해준다
    func fetchNews() -> Observable<[Article]> {
        return Observable.create { (observer) -> Disposable in
            
            self.fetchNews { (error, articles) in
                if let error = error {
                    observer.onError(error)
                }
                if let articles = articles {
                    observer.onNext(articles)
                }
                observer.onCompleted()
            }
            //Disposables는 메모리영역을 할당이 필요없어졌을 때 알아서 지워준다.
            return Disposables.create()
        }
    }
    
    
    //call back함수를 하나 만들어줌
    private func fetchNews(completion:@escaping ((Error?, [Article]?) -> Void)) {
        guard let url = URL(string: "https://newsapi.org/v2/everything?q=apple&from=2022-03-28&to=2022-03-28&sortBy=popularity&apiKey=e1b3a01d7ac24ccb866235acee95abf1") else { return completion(NSError(domain: "shin", code: 404, userInfo: nil), nil)}
        
            AF.request(url, method: HTTPMethod.get, parameters: nil, encoding: JSONEncoding.default, headers: nil, interceptor: nil, requestModifier: nil).responseDecodable(of: ArticleResponse.self) { response in
            if let error = response.error {
                return completion(error, nil)
            }
                
            if let articles = response.value?.articles {
                return completion(nil, articles)
            }
        }
        
        
    }
}
