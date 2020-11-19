//
//  HeaderView.swift
//  YahooRss
//
//  Created by 近藤大暉 on 2020/11/19.
//

import SwiftUI

struct HeaderView: View {

    var body: some View {
        
        HStack{
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text("RSS Reader")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .foregroundColor(.black)
            
            Spacer(minLength: 0)
            
            Button(action: {}) {
                
                Image("rss")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width:60, height: 60)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
