import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack (spacing: 0) {
            Image(systemName: "calendar")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 22.67, height: 27)
                .padding(.trailing, 16)
                .foregroundColor(Color("IconColor"))
            
            
            Image(systemName: "gearshape")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 22.6, height: 27)
                .foregroundColor(Color("IconColor"))
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        .padding(EdgeInsets(top: 12, leading: 291, bottom: 32, trailing: 30))

    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
