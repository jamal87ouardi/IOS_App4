//
//  ContentView.swift
//  Weather
//
//  Created by ouardi on 8/4/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var nom: String = ""
    @State var prenom: String = ""
    @State var txt=Text("")
    var body: some View {
        VStack {
            TextField("Votre nom...", text: $nom)
                .padding(20)
                .textFieldStyle(.roundedBorder)
            TextField("Votre prenom...", text: $prenom)
                .padding(20)
                .textFieldStyle(.roundedBorder)
            
            
            
            Button("Show") {
                txt=Text(nom+" "+prenom)
            }
            .padding(30)
            .buttonStyle(.bordered)
            .tint(.pink)
            
            txt
                .padding(20)
                .foregroundColor(.green)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
