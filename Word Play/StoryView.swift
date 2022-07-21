//
//  StoryView.swift
//  Word Play
//
//  Created by 이소은 on 2022/07/21.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        Text(writeStory())
    }
    
    
    func writeStory() -> String{
        return "Today I went to a zoo." +
        "I saw a \(words.adjective0) \(words.noun0) jumping up and down in its tree." +
        "He \(words.verb0) \(words.adverb0) through the large tunnel that led to its \(words.adjective1)  \(words.noun1)." +
        "I got some peanuts and passed them through the cage to a gigantic gray \(words.noun2) towering my head." +
        "Feeding that animal made me hungry." +
        "I went to get a \(words.adjective2) scoop of ice cream." +
        "It filled my stomach." +
        "Afterwards I had to \(words.verb1) \(words.adverb1)  to catch our bus." + 
        "When I got home I \(words.verb2) my mom for a \(words.adjective3) day at the zoo"
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words : Words())
    }
}
