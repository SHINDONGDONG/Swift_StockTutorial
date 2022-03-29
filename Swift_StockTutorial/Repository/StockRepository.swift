

import Combine

protocol StockRepository {
    func fetchStockPublisher(keywords: String) -> AnyPublisher<StockResult,Error>
    
    
}
