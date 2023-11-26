//
//  ContentView.swift
//  SwiftUIMVVM
//
//  Created by Lucas Gomesx on 26/11/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        ZStack {
            NavigationStack {
                List($viewModel.characterList.results) { $character in
                    NavigationLink {
                        DetailView(character: $character)
                    } label: {
                        HomeViewCell(character: $character)
                    }
                }
            }
        }
        .onAppear(perform: {
            viewModel.fetchCharacters()
        })
    }
}

#Preview {
    HomeView()
}
