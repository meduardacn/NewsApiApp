//
//  NewsFeedView.swift
//  NewsApiApp
//
//  Created by Maria Eduarda Casanova Nascimento on 28/07/20.
//  Copyright © 2020 Maria Eduarda. All rights reserved.
//

import SwiftUI

struct NewsFeedView: View {
    @ObservedObject var viewModel = NewsFeedViewModel()
    
    var body: some View {
        List(viewModel) { (article: NewsListItem) in
            VStack(alignment: .leading) {
                Text("\(article.title)")
                    .font(.headline)
                Text("\(article.author ?? "No author")")
                    .font(.subheadline)
            }.onAppear{
                self.viewModel.loadMoreArticles(currentItem: article)
            }
            .padding()
        }
    }
}

struct NewsFeedView_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeedView()
    }
}
