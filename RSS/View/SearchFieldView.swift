//
//  SearchFieldView.swift
//  YahooRss
//
//  Created by 近藤大暉 on 2020/11/19.
//

import SwiftUI

struct SearchFieldView: View {
    
    @State var keyword = ""
    
    var body: some View {
        Group{

            HStack(spacing: 15) {
                
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)

                TextField("Search", text: $keyword)
                
            }
            .padding(.vertical, 12)
            .padding(.horizontal)
            .clipShape(Capsule())
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray)
            )
        }
    }
}

struct SearchFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SearchFieldView()
    }
}
