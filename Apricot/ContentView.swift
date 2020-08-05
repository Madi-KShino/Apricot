//
//  ContentView.swift
//  Apricot
//
//  Created by Madison Shino on 8/5/20.
//  Copyright © 2020 madiShino. All rights reserved.
//

import SwiftUI
import ChameleonFramework

struct ContentView: View {
    var body: some View {
        TabView {
            Home().tabItem {
                Image("home").font(.title)
            }
            Text("Notes").tabItem {
                Image("notes").font(.title)
            }
            Text("Gallery").tabItem {
                Image("photos").font(.title)
            }
            Text("Settings").tabItem {
                Image("settings").font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    
    var body: some View {
        ZStack {
            
            Color(GradientColor(gradientStyle: .topToBottom, frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), colors: [UIColor.flatWhite(), UIColor.flatSand()])).edgesIgnoringSafeArea(.all)
//            Color(UIColor.flatSand())
            
            VStack(alignment: .leading, spacing: 12) {
                
                HStack {
                    Button(action: {
                        //
                    }) {
                        Image("menu").renderingMode(.original)
                    }
                    Spacer()
                    Button(action: {
                        //
                    }) {
                        Image("profile").renderingMode(.original)
                    }
                }
                
                Text("Find More").fontWeight(.heavy).font(.largeTitle).padding(.top, 15)
                
                HStack {
                    Button(action: {
                        //
                    }) {
                        Text("Experiences").fontWeight(.heavy).foregroundColor(Color(UIColor.flatWatermelon()))
                    }
                    Spacer()
                    Button(action: {
                        //
                    }) {
                        Text("Adventures").foregroundColor(.gray)
                    }
                    Spacer()
                    Button(action: {
                        //
                    }) {
                        Text("Activities").foregroundColor(.gray)
                    }
                }.padding([.bottom, .top], 15)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing: 15) {
                        VStack(alignment: .leading, spacing: 5) {
                            Button(action: {
                                //
                            }) {
                                Image("cactus").resizable().renderingMode(.original).frame(width: 180, height: 250).scaledToFit().cornerRadius(10)
                            }
                            Text("Cactus").foregroundColor(.gray).fontWeight(.heavy)
                            HStack(spacing: 5) {
                                //Image("cactus").renderingMode(.original)
                                Text("so cute").foregroundColor(.gray)
                            }
                        }
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Button(action: {
                                //
                            }) {
                                Image("dahlia").resizable().renderingMode(.original).frame(width: 190, height: 250).scaledToFit().cornerRadius(10)
                            }
                            Text("Dahlia").foregroundColor(.gray).fontWeight(.heavy)
                            HStack(spacing: 5) {
                                //Image("cactus").renderingMode(.original)
                                Text("so pretty").foregroundColor(.gray)
                            }
                        }
                    }
                }
            }.padding()
        }
    }
}
