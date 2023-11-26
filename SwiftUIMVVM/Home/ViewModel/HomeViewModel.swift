//
//  HomeViewModel.swift
//  SwiftUIMVVM
//
//  Created by Lucas Gomesx on 26/11/23.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    private var service: Service = Service<CharacterModel>()
    private var cancellables: Set<AnyCancellable> = []
    private var cancellable: Set<AnyCancellable> = []
    
    @Published var characterList: CharacterModel = CharacterModel(results: [])
    
    public func fetchCharacters() {
        let net: String = "https://rickandmortyapi.com/api/character"
        service.request(net)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let failure):
                    print(failure.localizedDescription)
                }
                
            }, receiveValue: { [weak self] result in
                self?.characterList = result
            })
            .store(in: &cancellable)
    }
    
}
