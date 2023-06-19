//
//  TodoListApp.swift
//  TodoList
//
//  Created by Suhaili on 16/6/23.
//

import SwiftUI

/*
 MVVM Architecture
 Model - data point
 View - UI
 ViewModel - manages Models for View
 */

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
