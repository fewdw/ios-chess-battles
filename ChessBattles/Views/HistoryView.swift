//
//  HistoryView.swift
//  ChessBattles
//
//  Created by Frederic Lefebvre on 2022-11-03.
//

import SwiftUI

struct HistoryView: View {
    
    @ObservedObject var logs = LogsViewModel()
    @State private var visible = true
    
    private func pulsateText(){
        withAnimation(Animation.easeInOut.repeatCount(5)){
            visible.toggle()
        }
    }
    
    var body: some View {
        ScrollView{
            ForEach(logs.list, id: \.self){ s in
                Text("\(s)")
                    .onAppear(perform: pulsateText)
                    .frame(width: 300)
                    .foregroundColor(Color.green)
                Divider()
            }
        }
        .onAppear(perform: logs.getData)
        
        .navigationTitle("Logs")
        
        .navigationBarItems(trailing:
                                Button(action:{
            logs.deleteData()
            
        })
                            {
            Text("Clear logs")
            Image(systemName: "trash.circle")
                .font(.title)
        })
        
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
