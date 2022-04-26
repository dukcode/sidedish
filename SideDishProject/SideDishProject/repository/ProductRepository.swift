import Foundation

enum ProductRepositoryError: Error {
    case fetchError
}

protocol ProductRepository {
    func fetchAll(completion: @escaping (Result<[DishCategory: [Product]], ProductRepositoryError>) -> Void)
    func fetchList(by category: DishCategory, completion: @escaping (Result<[Product], ProductRepositoryError>) -> Void)
    func fetchImage(completion: @escaping (Result<[DishCategory : [Data]] , ProductRepositoryError>) -> Void)
}

final class MockProductRepository {
    private let products: [Product]
    private var dishes: [DishCategory: [Product]] = [:]
    
    init() {
        self.products = MockProductFactory(makeCount: 10).makeRandomProducts()
    }
}
extension MockProductRepository: ProductRepository{

    func fetchImage(completion: @escaping (Result<[DishCategory : [Data]] , ProductRepositoryError>) -> Void) {
        var imageData: [DishCategory : [Data]]  = [:]
        let group = DispatchGroup()
        for product in products{
            guard let index = dishes[product.category]?.firstIndex(where: { factor in
                if factor.id == product.id{
                    return true
                }
                return false
            }) else { return }
            group.enter()
            guard let url = URL(string: product.imageUrl) else { return }
            URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data else {
                    completion(.failure(.fetchError))
                    return
                }
                if imageData[product.category] == nil{
                    guard let count = self.dishes[product.category]?.count else { return }
                    imageData[product.category] = [Data](repeating: Data(), count: count)
                }
                imageData[product.category]?[Int(exactly: index)!] = data
                group.leave()
            }.resume()
        }
        let queueForGroup = DispatchQueue(label: "endQueue", attributes: .concurrent)
        group.notify(queue: queueForGroup) {
            completion(.success(imageData))
        }
    }
    
    private func makeAllDishes(){
        dishes[.main] = products.filter{$0.category == .main}
        dishes[.soup] = products.filter{$0.category == .soup}
        dishes[.side] = products.filter{$0.category == .side}
    }
    
    func fetchAll(completion: @escaping (Result<[Product], ProductRepositoryError>) -> Void) {
        completion(.success(products))
    }
    func fetchAll(completion: @escaping (Result<[DishCategory : [Product]], ProductRepositoryError>) -> Void) {
        makeAllDishes()
        completion(.success(dishes))
    }
    
    
    func fetchList(by category: DishCategory, completion: @escaping (Result<[Product], ProductRepositoryError>) -> Void){
        let filteredResults = self.products.filter{ $0.category == category }
        completion(.success(filteredResults))
    }
    
    
}
