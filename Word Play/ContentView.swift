//
//  ContentView.swift
//  Word Play
//
//  Created by 이소은 on 2022/07/21.
//

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView{
            VStack{
                Text("Please enter the requested words below")
                HStack{
                    CustomTextField(placeholder: "adjective", variable : $words.adjective0)
                    CustomTextField(placeholder: "adjective", variable : $words.adjective1)
                    CustomTextField(placeholder: "adjective", variable : $words.adjective2)
                }
                HStack{
                    CustomTextField(placeholder: "adjective", variable : $words.adjective3)
                    CustomTextField(placeholder: "animal", variable : $words.noun0)
                    CustomTextField(placeholder: "animal", variable : $words.noun1)
                }
                HStack{
                    CustomTextField(placeholder: "place", variable : $words.noun2)
                    CustomTextField(placeholder: "past verb", variable : $words.verb0)
                    CustomTextField(placeholder: "verb", variable : $words.verb1)
                }
                HStack{
                    CustomTextField(placeholder: "past verb", variable : $words.verb2)
                    CustomTextField(placeholder: "adverb", variable : $words.adverb0)
                    CustomTextField(placeholder: "adverb", variable : $words.adverb1)
                }
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
            }
        }
        .navigationTitle("Word Play")
    }
}

struct Words{
    var adjective0 = ""
    var adjective1 = ""
    var adjective2 = ""
    var adjective3 = ""
    
    var noun0 = ""
    var noun1 = ""
    var noun2 = ""
    
    var verb0 = ""
    var verb1 = ""
    var verb2 = ""
    
    var adverb0 = ""
    var adverb1 = ""
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomTextField: View{
    let placeholder : String
    let variable : Binding<String>
    var body: some View{
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}
