//
//  ContentView.swift
//  Animations
//
//  Created by Jörg Klausewitz on 18.12.25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var springAmount = 1.0
    @State private var easeInOutAmount = 1.0
    @State private var easeInOutDelayAmount = 1.0
    @State private var easeInOutRepeatAmount = 1.0
    
    
    
    var body: some View {
        VStack{
            // 1st row
            HStack{
                Button("Spring"){
                    springAmount += 0.5
                    easeInOutAmount = 1.0
                    easeInOutDelayAmount = 1.0
                }
                .frame(width: 80, height: 80)
                .background(.red)
                .foregroundStyle(.white)
                .clipShape(.circle)
                .scaleEffect(springAmount)
                .animation(.spring(duration: 0.3, bounce: 0.5), value: springAmount)
                
                Spacer()
                
                Button("Ease In Out"){
                    easeInOutAmount += 0.5
                    springAmount = 1.0
                    easeInOutDelayAmount = 1.0
                }
                .frame(width: 80, height: 80)
                .background(.red)
                .foregroundStyle(.white)
                .clipShape(.circle)
                .scaleEffect(easeInOutAmount)
                .animation(.easeInOut(duration: 2), value: easeInOutAmount)
                
                Spacer()
                
                Button("Ease Delay"){
                    easeInOutDelayAmount += 0.5
                    springAmount = 1.0
                    easeInOutAmount = 1.0
                }
                .frame(width: 80, height: 80)
                .background(.red)
                .foregroundStyle(.white)
                .clipShape(.circle)
                .scaleEffect(easeInOutDelayAmount)
                .animation(.easeInOut(duration: 2).delay(1), value: easeInOutDelayAmount)
            }
            // 2nd row
            HStack{
                Button("Ease Repeat"){
                    easeInOutRepeatAmount += 0.5
                    springAmount = 1.0
                    easeInOutAmount = 1.0
                    easeInOutDelayAmount = 1.0
                }
                .frame(width: 80, height: 80)
                .background(.yellow)
                .foregroundStyle(.black)
                .clipShape(.circle)
                .scaleEffect(easeInOutRepeatAmount)
                .animation(.easeInOut(duration: 1).repeatCount(3, autoreverses: true), value: easeInOutRepeatAmount)
                
                Spacer()
                
                
                Button("Ease"){
                    easeInOutAmount += 0.5
                    springAmount = 1.0
                    easeInOutDelayAmount = 1.0
                }
                .frame(width: 80, height: 80)
               .background(.yellow)
                .foregroundStyle(.black)
                .clipShape(.circle)
                .scaleEffect(easeInOutAmount)
                .animation(.easeInOut(duration: 2), value: easeInOutAmount)
                
                Spacer()
                
                Button("Ease"){
                    easeInOutDelayAmount += 0.5
                    springAmount = 1.0
                    easeInOutAmount = 1.0
                }
                .frame(width: 80, height: 80)
                .background(.yellow)
                .foregroundStyle(.black)
                .clipShape(.circle)
                .scaleEffect(easeInOutDelayAmount)
                .animation(.easeInOut(duration: 2).delay(1), value: easeInOutDelayAmount)
            }
            .padding(.top)
        }
        .padding()
        .font(.system(size: 11))
        
        Spacer()
        
        Button("Reset"){
            springAmount = 1.0
            easeInOutAmount = 1.0
            easeInOutDelayAmount = 1.0
            easeInOutRepeatAmount = 1.0
            
        }
        
        
    }
    
    
}

#Preview {
    ContentView()
}
