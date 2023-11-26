//
//  DetailView.swift
//  SwiftUIMVVM
//
//  Created by Lucas Gomesx on 26/11/23.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var character: Characters
    
    var body: some View {
        ZStack {
            VStack {
                HomeViewCell(character: $character)
            }
        }
    }
}

#Preview {
    @State var char: Characters = Characters(id: 0, name: "Lucas", image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg")
    return DetailView(character: $char)
}
