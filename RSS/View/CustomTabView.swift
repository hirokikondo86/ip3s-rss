//
//  CustomTabView.swift
//  YahooRss
//
//  Created by 近藤大暉 on 2020/11/19.
//

import SwiftUI

struct TabButton : View {
    
    var image : String
    @Binding var selectedTab : String
    
    var body: some View{
        
        Button(action: {selectedTab = image}) {
            
            Image(image)
                .renderingMode(.template)
                .foregroundColor(selectedTab == image ? Color("tab") : Color.black.opacity(0.4))
                .padding()
        }
    }
}

struct CustomTabView : View {
    
    @State var selectedTab = "yahoo"
    
    var body: some View {
        TabView(selection: $selectedTab) {
            YahooArticleListView()
                .tabItem {

                    VStack {
                        
                        Text("Yahoo")
                    }
                }.tag("yahoo")
            
            QiitaArticleListView()
                .tabItem {

                    VStack {
                        
                        Text("Qiita")
                    }
                }.tag("qiita")
            
            HatenaArticleListView()
                .tabItem {

                    VStack {
                        
                        Text("Hatena")
                    }
                }.tag("hatena")
            
            RedditArticleListView()
                .tabItem {
                    VStack {
                        
                        Text("Reddit")
                    }
                }.tag("reddit")
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
