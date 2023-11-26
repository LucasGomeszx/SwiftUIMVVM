//
//  HomeViewCell.swift
//  SwiftUIMVVM
//
//  Created by Lucas Gomesx on 26/11/23.
//

import SwiftUI

struct HomeViewCell: View {
    
    @Binding var character: Characters
    
    var body: some View {
        ZStack {
            VStack {
                AsyncImage(url: URL(string: character.image ?? "")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                        .frame(width: 200, height: 200)
                } placeholder: {
                    ProgressView()
                        .frame(width: 200, height: 200)
                }
                HStack {
                    Text("Id : \(character.id ?? 0)")
                }
                HStack{
                    Text("Nome: \(character.name ?? "")")
                }
                Spacer()
            }
            .padding(.top, 30)
            .frame(maxWidth: 300, alignment: .center)
        }
    }
}

#Preview {
    @State var char: Characters = Characters(id: 0, name: "Lucas", image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg")
    return HomeViewCell(character: $char)
}
