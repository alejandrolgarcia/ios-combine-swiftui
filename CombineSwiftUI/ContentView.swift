//
//  ContentView.swift
//  CombineSwiftUI
//
//  Created by Luis Garcia on 22/01/22.
//

import SwiftUI

struct ContentView: View {
    // ObservableObject se puede usar en varias vistas
    // pero se resetea cuando se cambia de vista
    @ObservedObject var counter = Model()
    @State private var titulo = ""
    
    var body: some View {
        VStack {
            Text("Counter \(counter.counter)")
            Button("Reiniciar") {
                counter.counter += 1
            }
            Spacer()
            Vista2()
            Spacer()
            Vista3()
            Spacer()
            Vista4()
            Spacer()
            Vista5()
        }
    }
}


struct Vista2: View {
    @ObservedObject var counter = Model()
    
    var body: some View {
        VStack {
            Text("Counter vista2(ObservedObject) \(counter.counter)")
            Button("Sumar +1") {
                counter.counter += 1
            }
        }
    }
}

struct Vista3: View {
    @StateObject var counter = Model()
    
    var body: some View {
        VStack {
            Text("Counter vista3(@StateObject) \(counter.counter)")
            Button("Sumar +1") {
                counter.counter += 1
            }
        }
    }
}

struct Vista4: View {
    @EnvironmentObject var counter : Model
    
    var body: some View {
        VStack {
            Text("Counter vista4(@EnvironmentObject) \(counter.counter)")
            Button("Sumar +1") {
                counter.counter += 1
            }
        }
    }
}

struct Vista5: View {
    @EnvironmentObject var counter : Model
    
    var body: some View {
        VStack {
            Text("Counter vista5(@EnvironmentObject) \(counter.counter)")
            Button("Sumar +1") {
                counter.counter += 1
            }
        }
    }
}
