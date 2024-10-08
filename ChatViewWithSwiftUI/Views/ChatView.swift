//
//  ChatView.swift
//  ChatViewWithSwiftUI
//
//  Created by Manato Abe on 2024/09/10.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack(spacing: 0){
            // message area
            messageArea
            
            //Navigation area
                .overlay(navigationArea, alignment: .top)
            
            // input area
            inputArea
        }
    }
}
#Preview {
    ChatView()
}

extension ChatView{
    private var messageArea: some View {
        ScrollView{
            VStack(spacing: 0){
                ForEach(0..<15){ _ in
                    HStack{
                        Circle()
                            .frame(width: 60, height: 60)
                        Capsule()
                            .frame(height: 60)
                    }
                    .padding(.bottom)
                }
            }
            .padding(.horizontal)
            .padding(.top, 72)
        }
        .background(.cyan)
    }
    
    private var inputArea: some View{
        HStack{
            Circle()
                .frame(width:40, height:40)
            Circle()
                .frame(width:40, height:40)
            Circle()
                .frame(width:40, height:40)
            Capsule()
                .frame(height: 40)
            Circle()
                .frame(width:40, height:40)
        }
        .padding()
        .background(.white)
    }
    
    private var navigationArea: some View{
        HStack{
            Circle()
                .frame(width: 40, height: 40)
            Text("Title")
            Spacer()
            
            Circle()
                .frame(width: 40, height: 40)
            Circle()
                .frame(width: 40, height: 40)
            Circle()
                .frame(width: 40, height: 40)
        }
        .foregroundColor(.white)
        .padding()
        .background(.black.opacity(0.5))
    }
}

