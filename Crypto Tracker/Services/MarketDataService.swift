//
//  MarketDataService.swift
//  Crypto Tracker
//
//  Created by mohamed abdelrazek on 04/10/2022.
//

import Foundation

//
//  CoinDataService.swift
//  Crypto Tracker
//
//  Created by mohamed abdelrazek on 30/09/2022.
//

import Foundation
import Combine

class MarketDataService {
    @Published var marketData: MarketDataModel? = nil
    var marketDataSubscription: AnyCancellable?

    init(){
        getMarketData()
    }
    
    private func getMarketData(){
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }
        
        marketDataSubscription = NetworkManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkManager.handleCompletion, receiveValue: { [weak self] (returnedGlobal) in
                self?.marketData = returnedGlobal.data
                self?.marketDataSubscription?.cancel()
                
            })
    }
    
}
