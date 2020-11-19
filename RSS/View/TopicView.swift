//
//  TopicView.swift
//  YahooRss
//
//  Created by 近藤大暉 on 2020/11/19.
//

import SwiftUI

struct TopicView: View {
    
    var body: some View {
        
        HStack {
            
            Text("Top News")
                .font(.title2)
                .fontWeight(.bold)
            
            Spacer(minLength: 0)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("ViewAll")
            })
            .foregroundColor(.black)
        }
    }
}

struct TopicView_Previews: PreviewProvider {
    static var previews: some View {
        TopicView()
    }
}
