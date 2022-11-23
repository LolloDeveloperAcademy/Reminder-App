//
//  ContentView.swift
//  RemindersJoin
//
//  Created by Lorenzo on 22/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showModal = false
    
    
    
    
    var body: some View {
        
        NavigationView{
            
      
                
                
        
            
            VStack{
                
                myGrid
                
                
                // ⬇️ 🙉🙉🙉🙉 LA LISTAAAAA 🙉🙉🙉🙉 ⬇️  //
                myList()//Vstack
                
           
                
                
                ZStack{
                    
                    
                    Button(action: { showModal = true}) {
                        
                        HStack{
                            
                            Image(systemName: "plus.circle.fill")
                            Text("New Reminder")
                                .fontWeight(.heavy)
                                .foregroundColor(.blue)
                        }
                    }
                    
                   ModalView(isShowing: $showModal)
                    
                    
                    
                } //ZStack Button
                .frame(maxWidth: .infinity, maxHeight: 10)
                .statusBar (hidden: true)
                //ZStack button end
                
            
                
                
            } // V STACK DI TUTTO IL MONDO
        } // NavView
        .navigationBarTitleDisplayMode(.inline)
        
        
    } //  ⭐️ ⭐️ ⭐️ Var body ⭐️ ⭐️ ⭐️
    
    var myGrid : some View {
        
        
        // 🍗🍗 LA GRIGLIA  🍗🍗 //
        VStack {
            ZStack{
            VStack {
                HStack{
                    
                    NavigationLink {
                        TodayView()
                    } label: {
                        ZStack {
                            
                            Rectangle()
                                .frame(width: 160, height: 90)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                            HStack{
                                
                                VStack{
                                    Image (systemName: "calendar.circle.fill")
                                        .resizable()
                                        .foregroundColor(Color.blue)
                                        .frame(width: 50, height: 50)
                                    
                                    
                                    
                                    Text ("Today")
                                        .font(.headline)
                                        .fontWeight(.thin)
                                    
                                    
                                    
                                    
                                }
                                .padding(.trailing, 31.0)
                                
                                Text ("1")
                                    .font(.largeTitle)
                                    .fontWeight(.heavy)
                                    .multilineTextAlignment(.center)
                                
                            }}//zstack
                    }
                    
                    NavigationLink {
                        ScheduledView()
                    } label: {
                        ZStack {
                            
                            Rectangle()
                                .frame(width: 160, height: 90)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                            HStack{
                                
                                VStack{
                                    Image (systemName: "clock.circle.fill")
                                        .resizable()
                                        .foregroundColor(Color.yellow)
                                        .frame(width: 50, height: 50)
                                    
                                    Text ("Scheduled")
                                        .font(.headline)
                                        .fontWeight(.thin)
                                    
                                    
                                    
                                    
                                }
                                .padding(.trailing, 31.0)
                                
                                Text ("4")
                                    .font(.largeTitle)
                                    .fontWeight(.heavy)
                                    .multilineTextAlignment(.center)
                                
                            }
                            
                        }//zstack
                    }
                    
                    
                    
                }
                // Hstack1
                
                HStack{
                    ZStack {
                        
                        Rectangle()
                            .frame(width: 160, height: 90)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        HStack{
                            
                            VStack{
                                Image (systemName: "tray.circle.fill")
                                    .resizable()
                                    .foregroundColor(Color.gray)
                                    .frame(width: 50, height: 50)
                                
                                
                                
                                Text ("All")
                                    .font(.headline)
                                    .fontWeight(.thin)
                                
                                
                                
                                
                            }
                            .padding(.trailing, 31.0)
                            
                            Text ("15")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.center)
                            
                        }
                        
                    }
                    
                    ZStack {
                        
                        Rectangle()
                            .frame(width: 160, height: 90)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        HStack{
                            
                            VStack{
                                Image (systemName: "flag.circle.fill")
                                    .resizable()
                                    .foregroundColor(Color.red)
                                    .frame(width: 50, height: 50)
                                
                                
                                
                                Text ("Flag")
                                    .font(.headline)
                                    .fontWeight(.thin)
                                
                                
                                
                                
                            }
                            .padding(.trailing, 31.0)
                            
                            Text ("1")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.center)
                            
                        }
                        
                    }// Zstack
                } // Hstack2
                HStack{
                    ZStack {
                        
                        Rectangle()
                            .frame(width: 160, height: 90)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        HStack{
                            
                            VStack{
                                Image (systemName: "checkmark.circle.fill")
                                    .resizable()
                                    .foregroundColor(Color.green)
                                    .frame(width: 50, height: 50)
                                
                                
                                
                                Text ("Completed")
                                    .font(.headline)
                                    .fontWeight(.thin)
                                
                                
                                
                                
                            }
                            .padding(.trailing, 31.0)
                            
                            Text ("5")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.center)
                        }
                        
                    }// Zstack
                    
                    ZStack {
                        
                        Rectangle()
                            .frame(width: 160, height: 90)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        HStack{
                            
                            VStack{
                                Image (systemName: "person.circle.fill")
                                    .resizable()
                                    .foregroundColor(Color.purple)
                                    .frame(width: 50, height: 50)
                                
                                Text ("Assigned")
                                    .font(.headline)
                                    .fontWeight(.thin)
                                
                            }
                            .padding(.trailing, 31.0)
                            
                            Text ("6")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.center)
                            
                        }
                    }// Zstack
                } // Hstack3
            }
            //Vstack della grid
        }//zstack

        } // VstackGriglia
        
        // 🍗🍗 LA GRIGLIA FINTA 🍗🍗 //
     
        
    } //Var my grid some view
    

    
    
    
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct myList: View {
    var body: some View {
        VStack{
            
            
            
            List {
                
                Section {
                    
                    NavigationLink {
                        TodayView()
                    } label: {
                        HStack{
                            
                            
                            Image(systemName: "list.bullet.circle.fill")
                                .foregroundColor(.blue)
                            
                            Text("Reminders")
                        }
                    }

                    
                    NavigationLink {
                        TodayView()
                    } label: {
                        HStack{
                            
                            Image(systemName: "house.circle.fill")
                                .foregroundColor(.pink)
                            Text("Family")
                        }
                    }

                    
                    NavigationLink {
                        TodayView()
                    } label: {
                        HStack{
                            
                            Image(systemName: "leaf.circle.fill")
                                .foregroundColor(.orange)
                            Text("Groceries")
                        }
                    }

                   
                    
                    NavigationLink {
                        TodayView()
                    } label: {
                        HStack{
                            
                            Image(systemName: "book.circle.fill")
                                .foregroundColor(.blue)
                            Text("Book Club")
                        }
                    }

                    NavigationLink {
                        TodayView()
                    } label: {
                        HStack{
                            
                            Image(systemName: "cart.circle.fill")
                                .foregroundColor(.green)
                            Text("Gardening")
                        }
                    }

                   
                    
                } header: {
                    Text("My list")
                }
                .headerProminence(.increased)
                
                
                Section {
                    HStack{
                        
                        Image(systemName: "desktopcomputer")
                            .foregroundColor(.black)
                        Text("Computer Task")
                    }
                    HStack{
                        
                        Image(systemName: "g.circle.fill")
                            .foregroundColor(.blue)
                        Text("General")
                    }
                    HStack{
                        
                        Image(systemName: "cart.circle.fill")
                            .foregroundColor(.orange)
                        Text("Shopping List")
                    }
                } header: {
                    Text("iCloud")
                } //endsection
                .headerProminence(.increased)
                
                Section {
                    HStack{
                        
                        Image(systemName: "list.bullet.circle.fill")
                            .foregroundColor(.gray)
                        Text("Timely")
                    }
                    HStack{
                        
                        Image(systemName: "list.bullet.circle.fill")
                            .foregroundColor(.gray)
                        Text("Yahoo Main Task")
                    }
                    HStack{
                        
                        Image(systemName: "list.bullet.circle.fill")
                            .foregroundColor(.gray)
                        Text("For Work")
                    }
                } header: {
                    Text("Yahoo")
                }
                .headerProminence(.increased)
                
                
                
            } //list
            
            
        }
    }
}
