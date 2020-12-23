//
//  ContentView.swift
//  InstaClone


import SwiftUI
import UIKit

struct ContentView: View {
    
    
    var body: some View {
        
        VStack {
            
            // Insta title at top
            Text("Instaclone")
                .font(.title)
                .bold()
                .padding(.trailing, 200)
            
            
            
            ZStack {
                // Story Bar
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 350, height: 100, alignment: .center)
                    .foregroundColor(.white)
                    .shadow(color: Color(#colorLiteral(red: 0.8415025653, green: 0.8415025653, blue: 0.8415025653, alpha: 1)), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0, y: 0) // color Hex for shadow = #D7D7D7
                    .padding()
                
                
                
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack(spacing: 10) {
                        ForEach(0..<10) { index in
                            StoryView()
                        }
                    
                    }
                }).frame(width: 290)
                    
                
            }
            
            // Post view
            ScrollView(.vertical, showsIndicators: false, content: {
                ForEach(0..<10) { index in
                    Post()
                }
            })
                
                
                
            
            
            // menu bar view
            MenuBar()
            
        }
        
        
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// Story view
struct StoryView: View {
    
    var body: some View {
        
        
        Image("StoryPic")
            .frame(width: 65, height: 65)
            .cornerRadius(32.5)
            .clipShape(Circle())
            .overlay(
                RoundedRectangle(cornerRadius: 32.5)
                    .stroke(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.1737187389, blue: 0.4556499259, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.5907847247, blue: 0.001635324071, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
            )
            
            
        
    }
    
}



// Post view
struct Post: View {
    
    @State var Imagelike = "heart"
    @State var ImageColor = Color.black
        
    var body: some View {
        
        ZStack {
            
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 325, height: 400, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 0.8805925003, green: 0.8805925003, blue: 0.8805925003, alpha: 1)))
                .padding()
            
            VStack {
                Image("Pic")
                    .frame(width: 290, height: 295, alignment: .center)
                    .cornerRadius(25)
                    .padding(.bottom, 40)
                
                HStack {
                    
                    Button(action: {
                        print("Tapped")
                    }, label: {
                        Image(systemName: "bubble.left").font(.system(size: 25, weight: .regular))
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        print("Tapped")
                        
                        if Imagelike == "heart" {
                            self.Imagelike = "heart.fill"
                        } else {
                            self.Imagelike = "heart"
                        }
                        
                        
                        if ImageColor == Color.black {
                            self.ImageColor = Color.red
                        } else {
                            self.ImageColor = Color.black
                        }
                        
                    }, label: {
                        Image(systemName: Imagelike).font(.system(size: 25, weight: .regular))
                            .foregroundColor(ImageColor)
                    })
             
                }.padding(.trailing,200)
            }
            
            
        }
    
        
    }
    
}


struct MenuBar : View {
    
    var body: some View {
        
        ZStack {
            // Menu Bar
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 350, height: 75, alignment: .center)
                .foregroundColor(.white)
                .shadow(color: Color(#colorLiteral(red: 0.8415025653, green: 0.8415025653, blue: 0.8415025653, alpha: 1)), radius: 10, x: 0, y: 0) // color Hex for shadow = #D7D7D7
                
            
            HStack(spacing: 35) {
                
                
                
                Button(action: {
                    print("tapped")
                }, label: {
                    Image(systemName: "house").font(.system(size: 30, weight: .regular))
                        .foregroundColor(.black)
                })
                
                Button(action: {
                    print("tapped")
                }, label: {
                    Image(systemName: "magnifyingglass").font(.system(size: 30, weight: .regular))
                        .foregroundColor(.black)
                })
                
                Button(action: {
                    print("tapped")
                }, label: {
                    Image(systemName: "person.circle").font(.system(size: 30, weight: .regular))
                        .foregroundColor(.black)
                })
                
                Button(action: {
                    print("tapped")
                }, label: {
                    Image(systemName: "bubble.left.and.bubble.right").font(.system(size: 30, weight: .regular))
                        .foregroundColor(.black)
                    
                    
                })
                
            
                
            }
        }
        
        
        
    }
    
    
    
}
