//
//  RedditView.swift
//  YahooRss
//
//  Created by 近藤大暉 on 2020/11/19.
//

import SwiftUI
import Alamofire

class RedditViewModel: ObservableObject {
    @Published var items: [Item] = []
    @Published var topic: String = "home"

    init() {
        let urlString = "https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fwww.reddit.com%2F.rss"
        AF.request(urlString).response{ response in
            guard let data = response.data else {
                return
            }

            guard let articleList = try? JSONDecoder.init().decode(ArticleList.self, from: data) else {
                return
            }
            self.items = articleList.items
        }
    }
}

struct RedditArticleListView: View {

    @ObservedObject var redditVM = RedditViewModel()

    var body: some View {
        ScrollView {

            ForEach(redditVM.items, id: \.guid){item in
                
                Button(action: {
                    
                    if let url = URL(string: item.link){
                        UIApplication.shared.open(url)
                    }
                    
                }, label: {
                    
                    Text(item.title)
                        .padding()
                        .frame(width: UIScreen.main.bounds.width, height: 80)
                        .overlay(
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.gray),
                            alignment: .top
                        )
                })
            }
        }
    }
}
