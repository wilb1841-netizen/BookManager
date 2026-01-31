//
//  FavoriteToggle.swift
//  BookManager
//
//  Created by Wilbert Baker on 1/17/26.
//

import SwiftUI

struct FavoriteToggle:View {
    @Binding var isFavorite: Bool
    @State private var scale: CGFloat = 1
    @State private var opacity: CGFloat = 0
    @State private var offsetY: CGFloat = 0
    var body: some View {
        ZStack{
            Image(systemName:"heart.fill")
            Toggle(isOn: $isFavorite) {
                .foregroundStyle(.red : .grey)
                .font( .largeTitle)
                .opacity(0)
                .scaleEffect(1)
                .offset(x: 0, y:0)
            Toggle(isOn: $isFavorite) {
                Image(systemName: isFavorite ? "heart.fill": "heart")
                    .foregroundColor(isFavorite ? .red : .blue)
            }
            .toggleStyle(.button)
            .buttonStyle(.plain)
            .animation(.spring, value: isFavorite)
            .accessibilityLabel(isFavorite ? "unfavorite" : "Addto Favorite")
            .onChange(of: isFavorite) (oldValue, newValue in
                guard newValue == true else {return}
                //appear and grow
                                       withAnimation(.spring(response: 0.5, damping)
                                       
            
        }
    }
}
