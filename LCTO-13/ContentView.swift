//
//  ContentView.swift
//  LCTO-13
//
//  Created by thomasperez on 4/1/24. "Easter Monday"

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ReportView()) {
                    Text("Report")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                NavigationLink(destination: InquireView()) {
                    Text("Inquire")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(10)
                }
                .padding()
            }
            .padding()
        }
    }
}

struct ReportView: View {
    @State private var reportText = ""
    
    var body: some View {
        VStack {
            Text("Report Your Experience")
                .font(.headline)
                .padding()
            
            TextEditor(text: $reportText)
                .frame(minHeight: 200)
                .border(Color.gray, width: 1)
                .padding()
            
            Button(action: submitReport) {
                Text("Submit")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
    
    func submitReport() {
        // Implement submission logic
        print("Report submitted: \(reportText)")
    }
}

struct InquireView: View {
    // Placeholder for inquiry logic
    var body: some View {
        Text("Inquiries will be displayed here")
            .padding()
    }
}

@main
struct LCTO_13App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
