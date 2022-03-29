import Combine
import Foundation

class StockRepositoryImpl: StockRepository {
    let apiKey: String = "UGMPZ08P167KDUR0"
    let decoder = JSONDecoder()
    
    func fetchStockPublisher(keywords: String) -> AnyPublisher<StockResult, Error> {
        
        let urlString = "https://www.alphavantage.co/query?function=SYMBOL_SEARCH&keywords=\(keywords)&apikey=\(apiKey)"
        let url = URL(string: urlString)!
        
        let task = URLSession.shared.dataTaskPublisher(for: url).map { $0.data}.decode(type: StockResult.self, decoder: decoder).receive(on: RunLoop.main).eraseToAnyPublisher()
        
    }
}
