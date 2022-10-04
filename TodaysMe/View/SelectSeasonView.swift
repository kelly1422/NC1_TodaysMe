//
//  SelectSeasonView.swift
//  TodaysMe
//
//  Created by kelly on 2022/05/05.
//

import SwiftUI

enum Season {
    case spring, summer, fall, winter
}

struct SelectSeasonView: View {
    @Binding var selectedSeason: Season

        var body: some View {
            VStack{
                Picker("My Picker", selection: $selectedSeason) {
                    Text("봄")
                        .tag(Season.spring)
                    Text("여름")
                        .tag(Season.summer)
                    Text("가을")
                        .tag(Season.fall)
                    Text("겨울")
                        .tag(Season.winter)
                }
                .pickerStyle(MenuPickerStyle())
                .accentColor(.black)
                .background{
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: 35, height: 35)
                        .foregroundColor(.white.opacity(0.7))
                }
            }
        }
}
//
//struct SelectSeasonView_Previews: PreviewProvider {
//    static var previews: some View {
//        SelectSeasonView()
//    }
//}
