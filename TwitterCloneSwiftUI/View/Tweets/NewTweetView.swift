//
//  NewTweetView.swift
//  TwitterCloneSwiftUI
//
//  Created by Narek Ghukasyan on 07.10.22.
//

import SwiftUI

struct NewTweetView: View {
    @Binding var isPresented: Bool
    @State var captionText: String = ""
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .top) {
                    Image("batman")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(width: 64, height: 64)
                        .cornerRadius(32)
                    
                    
                    
                    TextArea(placeholder: "What's happening..", text: $captionText)
                    
                    Spacer()
                }
                .padding()
//                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            isPresented.toggle()
                        } label: {
                            Text("Cancel")
                                .foregroundColor(.blue)
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                        } label: {
                            Text("Tweet")
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .clipShape(Capsule())
                        }
                    }
                }
                
                Spacer()
            }
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView(isPresented: .constant(true))
    }
}
