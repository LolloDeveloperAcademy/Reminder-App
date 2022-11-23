//
//  ModalView.swift
//  RemindersJoin
//
//  Created by Lorenzo on 22/11/22.
//

import SwiftUI

struct ModalView: View {
    
    @Binding var isShowing: Bool
    @State private var isDragging = false
    
    @State private var curHeight : CGFloat = 400
    
    @Environment(\.presentationMode) var presentationMode:
    Binding<PresentationMode>
    
    let minHeight : CGFloat = 400
    let maxHeight : CGFloat = 700
    
    let startOpacity: Double = 0.4
    let endOpacity: Double = 0.8
    
    var dragPercentage : Double {
        let res = Double (curHeight - minHeight) / (maxHeight - minHeight)
        return max(0, min(1, res))
        
    }
   
    @State private var nameComponents = PersonNameComponents()

    
    
    
    var body: some View {
        
        ZStack (alignment: .bottom)  {
            if isShowing {
                
                Color.black
                    .opacity(startOpacity + (endOpacity - startOpacity) * dragPercentage)
                
                
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing = false
                    }

                mainView
                    .transition(.move(edge: .bottom))
               
                    
                }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut)
        
        
        
    }
    
    var mainView: some View {
        VStack{
            
            ZStack {
                Capsule()
                    .frame(width: 40, height: 6)
            }
            .frame(height: 40)
            .frame(maxWidth: .infinity)
            .background(Color.white.opacity(0.00001)) //important for Dragging
            .gesture(dragGesture)
            
            
            
            ZStack{
                VStack{

                    TextField(
                            "New Note here",
                            value: $nameComponents,
                            format: .name(style: .medium))
                    .padding (.vertical, 10)
                    .font(.system(size:30))
                        .disableAutocorrection(true)
                        .border(.secondary)
                  
                    
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
    } // Vstack Totale
        
        
        
        .frame(height: curHeight)
        .frame(maxWidth: .infinity)
        .background(
            //RoundedCorners on only top
            
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                Rectangle ()
                    .frame(height: curHeight / 2)
            }
                .foregroundColor(.white)
 )
        .animation(isDragging ? nil : .easeInOut(duration: 0.45))
}
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

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(isShowing: .constant(true))
    }
}

