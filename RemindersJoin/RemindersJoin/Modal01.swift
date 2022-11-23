//
//  Modal01.swift
//  RemindersJoin
//
//  Created by Lorenzo on 23/11/22.
//
/*

import SwiftUI

struct FullScreenModalView: View {
    @Environment(\.presentationMode) var presentationMode
   

    
    
    
    
    var body: some View {
       
        VStack{
            
            
            ZStack {
                Capsule()
                    .frame(width: 40, height: 6)
            }
            .frame(height: 40)
            .frame(maxWidth: .infinity)
            .background(Color.white.opacity(0.00001)) //important for Dragging
         
            
            
            
            ZStack{
                VStack{

                   
                    
                    Button("Add") {
                        self.presentationMode.wrappedValue.dismiss()

                    }
                   .buttonStyle(.borderedProminent)
                                    
                    Spacer()
                    
                }
                .padding(.horizontal, 20)
            }
        .frame(maxHeight: .infinity)
        .padding(.top, 35)

            
       
        
        ZStack {
            
            
            Color.primary.edgesIgnoringSafeArea(.all)
            Button("Dismiss Modal") {
                presentationMode.wrappedValue.dismiss()
            }
        } // ZStack
        
        
        
        } // Stack
        
        
        
        
        
    } // someView
} // View







struct Modal01: View {
    
    @State private var isPresented = false
  //  @Binding var isShowing: Bool
    @State private var isDragging = false
    
    @State private var curHeight : CGFloat = 400
    let minHeight : CGFloat = 400
    let maxHeight : CGFloat = 700
    
    let startOpacity: Double = 0.4
    let endOpacity: Double = 0.8
    
    var dragPercentage : Double {
        let res = Double (curHeight - minHeight) / (maxHeight - minHeight)
        return max(0, min(1, res))
    }
    
    var body: some View {
        
        Button("Present!") {
            isPresented.toggle()
        }
        .fullScreenCover(isPresented: $isPresented, content: FullScreenModalView.init)
    }
    
    @State private var nameComponents = PersonNameComponents()
    
    
    @State private var prevDragTranslation = CGSize.zero
    
    var dragGesture : some Gesture {
        DragGesture(minimumDistance: 0, coordinateSpace: .global)
            .onChanged{ val in
                if !isDragging{
                    isDragging = true
                }
                
                let dragAmount = val.translation.height - prevDragTranslation.height
                if curHeight > maxHeight || curHeight < minHeight {
                    curHeight -= dragAmount / 6
                } else {
                        curHeight -= dragAmount
            
                }
                
                prevDragTranslation = val.translation
                
            }
            .onEnded { val in
                prevDragTranslation = .zero
                isDragging = false
                if curHeight > maxHeight {
                    curHeight = maxHeight
                }
                else if curHeight < minHeight {
                    curHeight = minHeight
                }
            }
        
  
        
        
        
    }
}

struct Modal01_Previews: PreviewProvider {
    static var previews: some View {
        Modal01()
    }
}
*/
