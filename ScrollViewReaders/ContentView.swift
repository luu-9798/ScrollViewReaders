//
//  ContentView.swift
//  ScrollViewReaders
//
//  Created by Trung Luu on 3/30/23.
//

import SwiftUI

struct CharacterInfo: Identifiable {
    var id: Int
    var name: String
}

struct ContentView: View {
    let charArray = [
        CharacterInfo(id: 0, name: "a.circle.fill"),
        CharacterInfo(id: 1, name: "b.circle.fill"),
        CharacterInfo(id: 2, name: "c.circle.fill"),
        CharacterInfo(id: 3, name: "d.circle.fill"),
        CharacterInfo(id: 4, name: "e.circle.fill"),
        CharacterInfo(id: 5, name: "f.circle.fill"),
        CharacterInfo(id: 6, name: "g.circle.fill"),
        CharacterInfo(id: 7, name: "h.circle.fill"),
        CharacterInfo(id: 8, name: "i.circle.fill"),
        CharacterInfo(id: 9, name: "j.circle.fill"),
        CharacterInfo(id: 10, name: "k.circle.fill")
    ]
    
    var body: some View {
        ScrollView {
            ScrollViewReader { value in
                Button("Go to letter K") {
                    value.scrollTo(10)
                }
                .padding()
                .background(Color.yellow)
                ForEach(charArray) {image in
                    Image(systemName: image.name)
                        .id(image.id)
                        .font(.largeTitle)
                        .foregroundColor(.accentColor)
                        .frame(width: 130, height: 90)
                        .background(Color.yellow)
                        .padding()
                }
                Button("Go to letter A") {
                    value.scrollTo(0)
                }
                .padding()
                .background(Color.yellow)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
