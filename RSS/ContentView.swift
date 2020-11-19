//
//  ContentView.swift
//  YahooRss
//
//  Created by 近藤大暉 on 2020/11/14.
//

import SwiftUI

struct ContentView: View {

    var body: some View {

        VStack {
            
            HeaderView()
                .padding()
            
            SearchFieldView()
                .padding()
                    
            TopicView()
                .padding()
            
            CustomTabView()
                .navigationTitle("")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
