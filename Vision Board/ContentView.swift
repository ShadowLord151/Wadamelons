//
//  ContentView.swift
//  Vision Board
//
//  Created by Dinakar Venugopal on 4/6/2024.
//

import SwiftUI

struct WidgetModel {
    var imageTitle: String
    var category: String
}
struct ContentView: View {
    var body: some View {
        
        ScrollView{
        
        VStack(alignment: .center, spacing: 2) {
            HStack(alignment: .top, spacing: 110) {
                Text("Vision Board")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                  .foregroundColor(.black)
                
                ZStack {
                    HStack(alignment: .center, spacing: 0) {
                        Image(systemName: "plus")
                    }
                    .padding(0)
                    .frame(width: 26, height: 22, alignment: .center)
                }
                .frame(width: 24, height: 40)
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
            VStack {
                HStack {
                    VStack {
                        WidgetView()
                        WidgetView()
                    }
                    
                    VStack {
                        WidgetSmallView()
                        WidgetSmallView()
                        WidgetSmallView()
                    }
                    
                }
                WidgetView(isLarge: true)
                
            }
        }
    }

struct WidgetView: View {
    var imageTitle: String = ""
    var isLarge: Bool = false
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 21)
                .foregroundStyle(LinearGradient(
                    stops: [
                        Gradient.Stop(color: Color(red: 0.37, green: 0.78, blue: 0.96), location: 0.00),
                        Gradient.Stop(color: Color(red: 0, green: 0.48, blue: 1), location: 1.00),
                    ],
                    startPoint: UnitPoint(x: 0.5, y: 0),
                    endPoint: UnitPoint(x: 0.5, y: 1)
                ))
            Image(imageTitle)
                .resizable()
                .scaledToFill()
                .frame(width: isLarge ? 337 : 185, height: isLarge ? 133 : 192)
                .opacity(1)
        }
        .frame(width: isLarge ? 337 : 185, height: isLarge ? 133 : 192)
        .background(
            
        )
        .cornerRadius(21)
        .padding(10)
        
        
    }
}
struct WidgetSmallView: View {
    var imageTitle: String = ""
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 21)
                .foregroundStyle(LinearGradient(
                    stops: [
                        Gradient.Stop(color: Color(red: 0.37, green: 0.78, blue: 0.96), location: 0.00),
                        Gradient.Stop(color: Color(red: 0, green: 0.48, blue: 1), location: 1.00),
                    ],
                    startPoint: UnitPoint(x: 0.5, y: 0),
                    endPoint: UnitPoint(x: 0.5, y: 1)
                ))
            Image(imageTitle)
                .resizable()
                .scaledToFill()
                .frame(width: 132, height: 118)
                .opacity(1)
        }
        .frame(width: 132, height: 118)
        .background(
            
        )
        .cornerRadius(21)
        .padding(10)
        
    }
    }
}

#Preview {
    ContentView()
}
