//
//  MainPageView.swift
//  TodaysMe
//
//  Created by kelly on 2022/04/27.
//

import SwiftUI

struct MainPageView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CellView: View {
    var body: some View {
        HStack(spacing: 18) {
            RoundedRectangle(cornerRadius: 9)
                .frame(width: 60, height: 60)
            
            HStack {
                VStack(alignment: .leading, spacing: 13){
                    Text("2022년 4월 27일")
                        .font(.body)
                    Text("그그그그그그그그그그그그그그그그그그그그그그")
                        .font(.caption)
                }
                Spacer()
                Image.init(systemName: "star.fill")
                    .font(.title3)
            }
        }
        .padding(.horizontal, 18)
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        CellView()
    }
}
