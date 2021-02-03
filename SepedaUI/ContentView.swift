//
//  ContentView.swift
//  SepedaUI
//
//  Created by Ahda  Dzia Ulhaq on 03/02/21.
//

import SwiftUI

//model data
struct ProductModel: Identifiable {
    let id: Int
    let namaProduk: String
    let fotoProduk: String
    let hargaProduk: Int
    let lokasi: String
    let ratingCount: Int
    let ratingSum: Int
    
    init(id: Int, namaProduk: String, fotoProduk: String, hargaProduk: Int, lokasi: String, ratingCount: Int, ratingSum: Int) {
        
        self.id = id
        self.namaProduk = namaProduk
        self.fotoProduk = fotoProduk
        self.hargaProduk = hargaProduk
        self.lokasi = lokasi
        self.ratingCount = ratingCount
        self.ratingSum = ratingSum
    }
}

struct ContentView: View {
    var body: some View {
        Product()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Product: View {
    var body: some View {
        VStack(alignment: .leading){
            // foto
            ZStack(alignment: .topTrailing){
                Image("foto1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 250)
                    .clipped()
                
                Button(action: {print("Liked")}){
                    Image(systemName: "heart")
                        .padding()
                        .foregroundColor(.red)
                }
            }
            
            Text("Sepeda Polygon")
                .font(.title)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            
            Text("Rp. 2.000.000")
                .font(.title)
                .bold()
                .foregroundColor(.red)
                .padding(.leading)
                .padding(.trailing)
            
            HStack{
                Image(systemName: "mappin.circle")
                Text("Kab. Banyumas")
            }
            .padding(.leading)
            .padding(.trailing)
            
            HStack{
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
            }
            .padding(.leading)
            .padding(.trailing)
            
            Button(action: {print("ditambahkan")}){
                HStack{
                    Spacer()
                    HStack{
                        Image(systemName: "cart")
                        Text("Tambah ke Keranjang")
                            .font(.callout)
                            .padding()
                    }
                    Spacer()
                    
                }
            }
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(15)
            .padding()
        }
        .background(Color("warna"))
    }
}
