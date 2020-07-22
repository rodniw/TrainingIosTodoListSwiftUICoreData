//
//  ContentView.swift
//  TrainingIosTodoListSwiftUICoreData
//
//  Created by Rodion Prosvirnin on 23.07.2020.
//  Copyright © 2020 Rodion Prosvirnin. All rights reserved.
//


import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: ToDoItem.getAllToDoItems()) var toDoItems: FetchedResults<ToDoItem>
    
    @State private var newToDoItem = ""
    
    var body: some View {
        NavigationView{
            List{
                Section(header: Text("Новая запись")) {
                    HStack {
                        TextField("Начните ввод", text: self.$newToDoItem)
                        Button(action: {
                            
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                                .imageScale(.large)
                        }
                    }
                }.font(.headline)
            }
    
            .navigationBarTitle(Text("ToDo list"))
            .navigationBarItems(trailing: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
