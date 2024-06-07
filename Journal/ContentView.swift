//
//  ContentView.swift
//  Journal
//
//  Created by Paluck Deep on 4/6/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        //Top screen bar
        /*HStack(alignment: .top) {
            HStack(alignment: .center, spacing: 0) {
                
                Text("9:41")
                  .font(
                    Font.custom("SF Pro", size: 17)
                      .weight(.semibold)
                  )
                  .padding(.bottom, 3)
                  .multilineTextAlignment(.center)
                  .foregroundColor(.black)
                
            }
            .padding(.horizontal, 0)
            .padding(.top, 18.33962)
            .padding(.bottom, 13.66038)
            .frame(maxWidth: .infinity, alignment: .center)
            
            HStack {
                Image("Levels")
                    .padding(.bottom, 3)
                .frame(maxWidth: .infinity, minHeight: 54, maxHeight: 54)
            }
            
        }
        .frame(width: 393, height: 54, alignment: .top)
        .background(.white)
         */
        
        
        ScrollView{
            
            
            //Top Header\
            VStack(alignment: .center, spacing: 2) {
                HStack(alignment: .top, spacing: 288) {
                    HStack(alignment: .center, spacing: 16) {
                        HStack(alignment: .top, spacing: 10) {
                            
                            Image("Button")
                                .padding()
                            
                        }
                        .padding(0)
                        
                        Spacer()
                        
                        HStack(alignment: .top, spacing: 10) {
                            Image("Button2")
                            
                        }
                        .padding(0)
                        
                        
                    }
                    .padding(.leading, 8)
                    .padding(.trailing, 0)
                    .padding(.vertical, 11)
                    
                    
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .top)
                
                
                HStack(alignment: .top, spacing: 10) {
                    Text("Journal")
                      .font(
                        Font.custom("SF Pro", size: 34)
                          .weight(.bold)
                      )
                      .foregroundColor(.black)
                    
                }
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                
                
            }
            .padding(.horizontal, 16)
            .padding(.top, 27)
            .padding(.bottom, 4)
            .frame(width: 393, alignment: .top)
            .background(.white)

        
            //Journal 1
            ZStack {
                
                // Title 1
                HStack {
                    Text("Entry 1")
                        .font(Font.custom("SF Pro", size: 20))
                        .foregroundColor(.black)
                        .frame(width: 80, height: 17.63566, alignment: .leading)
                        .padding(4)
                 
                    Spacer()
                    
                    ZStack {
                        
                        //Image("Pic Name")
                        
                    }
                    .frame(width: 60, height: 60)
                    .background(
                      Image("WidgetsSmall")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipped()
                    )
                    .cornerRadius(21)
                    .overlay(
                      RoundedRectangle(cornerRadius: 21)
                        .stroke(.black, lineWidth: 1)
                    )
                    
                }
                .frame(width: 309, height: 60, alignment: .leading)
            
            }
            .frame(width: 345, height: 91)
            .background(
              LinearGradient(
                stops: [
                  Gradient.Stop(color: Color(red: 0.64, green: 0.82, blue: 1), location: 0.00),
                  Gradient.Stop(color: Color(red: 0.06, green: 0.54, blue: 1), location: 1.00),
                ],
                startPoint: UnitPoint(x: 0.5, y: 0),
                endPoint: UnitPoint(x: 0.5, y: 1)
              )
            )
            .cornerRadius(21)
            
            
            //Journal 2
            ZStack {
                
                // Title 1
                HStack {
                    Text("Entry 2")
                        .font(Font.custom("SF Pro", size: 20))
                        .foregroundColor(.black)
                        .frame(width: 80, height: 17.63566, alignment: .leading)
                        .padding(4)
                 
                    Spacer()
                    
                    ZStack {
                        
                        //Image("Pic Name")
                        
                    }
                    .frame(width: 60, height: 60)
                    .background(
                      Image("WidgetsSmall")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipped()
                    )
                    .cornerRadius(21)
                    .overlay(
                      RoundedRectangle(cornerRadius: 21)
                        .stroke(.black, lineWidth: 1)
                    )
                    
                }
                .frame(width: 309, height: 60, alignment: .leading)
            
            }
            .frame(width: 345, height: 91)
            .background(
              LinearGradient(
                stops: [
                  Gradient.Stop(color: Color(red: 0.64, green: 0.82, blue: 1), location: 0.00),
                  Gradient.Stop(color: Color(red: 0.06, green: 0.54, blue: 1), location: 1.00),
                ],
                startPoint: UnitPoint(x: 0.5, y: 0),
                endPoint: UnitPoint(x: 0.5, y: 1)
              )
            )
            .cornerRadius(21)
            
            
            //New Journal
            ZStack {
                // Add Entry
                Text("+ Add Entry")
                  .font(Font.custom("SF Pro", size: 20))
                  .multilineTextAlignment(.center)
                  .foregroundColor(.black)
                  .frame(width: 104, height: 17.5, alignment: .top)
                
            }
            .frame(width: 345, height: 91)
            .cornerRadius(21)
            .overlay(
              RoundedRectangle(cornerRadius: 21)
                .stroke(.black, style: StrokeStyle(lineWidth: 2, dash: [6, 6]))
            )
            
            
            
            
            
        
        }
        
    
        
       
    }
}

#Preview {
    ContentView()
}
