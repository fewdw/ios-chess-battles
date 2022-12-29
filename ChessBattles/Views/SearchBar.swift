//
//  SearchBar.swift
//  ChessBattles
//
//  Created by Frederic Lefebvre on 2022-12-08.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .padding(8)
            if !text.isEmpty {
                Button(action: {
                    self.text = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.secondary)
                }
                .padding(8)
            }
        }
        .background(Color(.systemGray5))
        .cornerRadius(8)
    }
}
