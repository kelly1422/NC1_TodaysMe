//
//  AvatarDetailView.swift
//  TodaysMe
//
//  Created by kelly on 2022/05/04.
//

import SwiftUI
struct AvatarDetailView: View {
    @Environment(\.presentationMode) var presenstation
    
//    let selectedAvatar: newAvatar
    let date: Date
    let face: String
    let hair: String
    let eyes: String
    let mouth: String
    let message: String
    let season: String
    
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
        return formatter
    }()
    
    var body: some View {
        ZStack{
            Image(season)
                .resizable()
                .ignoresSafeArea()
            VStack{
                HStack{
                    Spacer()
                    Button {
                        self.presenstation.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 20, height: 20)
                            .background {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.white.opacity(0.9))
                            }
                    }
                    .padding(.horizontal, 30)
                    .padding(.bottom, 20)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.white)
//                        .foregroundColor(Color.init(red: 230/255, green: 200/255, blue: 230/255))
                        .frame(width: 360, height: 530)
                        .shadow(color: .black, radius:40, x: 3, y: 3)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 2)
                                .foregroundColor(.gray)
                        }
                    Image(season)
                        .resizable()
                        .frame(width: 320, height: 395)
                        .padding(.bottom, 90)
                    
                    Text(date, formatter: AvatarDetailView.dateFormat)
                        .font(.custom("Goyang", size: 30))
                        .background() {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.white.opacity(0.6))
                                .frame(width: 200, height: 40)
                            
                        }
                        .padding(.bottom, 430)
                        .padding(.trailing, 100)
                    
                    ZStack{
                        Image(face)
                            .resizable()
                            .shadow(color: .white, radius: 40, x: 3, y: 3)
                        Image(hair)
                            .resizable()
                        Image(eyes)
                            .resizable()
                        Image(mouth)
                            .resizable()
                    }
                    .frame(width: 220, height: 220, alignment: .center)
                    .padding(.bottom, 125)
                    Image("body")
                        .resizable()
                        .frame(width: 150, height: 110)
                        .padding(.top, 133)
                        .padding(.leading, 15)
                    
                    Text(message)
                        .font(.custom("Goyang", size: 18))
                        .padding(.top, 400)
                }
            }
        }
    }
}
//struct AvatarDetailView: View {
//    @Environment(\.presentationMode) var presenstation
//
//    let selectedAvatar: newAvatar
//
//    static let dateFormat: DateFormatter = {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "YYYY년 M월 d일"
//        return formatter
//    }()
//
//    var body: some View {
//        ZStack{
//            Image("spring")
//                .resizable()
//                .ignoresSafeArea()
//            VStack{
//                HStack{
//                    Spacer()
//                    Button {
//                        self.presenstation.wrappedValue.dismiss()
//                    } label: {
//                        Image(systemName: "xmark")
//                            .resizable()
//                            .foregroundColor(.black)
//                            .frame(width: 20, height: 20)
//                            .background {
//                                RoundedRectangle(cornerRadius: 10)
//                                    .frame(width: 40, height: 40)
//                                    .foregroundColor(.white.opacity(0.9))
//                            }
//                    }
//                    .padding(.horizontal, 30)
//                    .padding(.bottom, 20)
//                }
//                ZStack{
//                    RoundedRectangle(cornerRadius: 10)
//                        .foregroundColor(Color.init(red: 230/255, green: 200/255, blue: 230/255))
//                        .frame(width: 360, height: 530)
//                        .shadow(color: .black, radius:40, x: 3, y: 3)
//                        .overlay {
//                            RoundedRectangle(cornerRadius: 10)
//                                .stroke(lineWidth: 2)
//                                .foregroundColor(.gray)
//                        }
//                    RoundedRectangle(cornerRadius: 10)
//                        .foregroundColor(.white)
//                        .frame(width: 320, height: 395)
//                        .padding(.bottom, 90)
//                    Text(selectedAvatar.date, formatter: AvatarDetailView.dateFormat)
//                        .font(.custom("Goyang", size: 30))
//                        .padding(.bottom, 430)
//                        .padding(.trailing, 100)
//                    ZStack{
//                        Image(selectedAvatar.face)
//                            .resizable()
//                        Image(selectedAvatar.hair)
//                            .resizable()
//                        Image(selectedAvatar.eyes)
//                            .resizable()
//                        Image(selectedAvatar.mouth)
//                            .resizable()
//                    }
//                    .frame(width: 220, height: 220, alignment: .center)
//                    .padding(.bottom, 125)
//                    Image("body")
//                        .resizable()
//                        .frame(width: 150, height: 110)
//                        .padding(.top, 133)
//                        .padding(.leading, 15)
//
//                    Text(selectedAvatar.message)
//                        .font(.custom("Goyang", size: 18))
//                        .padding(.top, 400)
//                }
//            }
//        }
//    }
//}

//struct AvatarDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        AvatarDetailView()
//    }
//}
