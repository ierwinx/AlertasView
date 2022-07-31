import SwiftUI

struct ContentView: View {
    
    @State private var bMostrado = false
    
    var alerta: Alert {
        let cancelar = Alert.Button.destructive(Text("Eliminar")) {
            print("Seleccionaste eliminar")
        }
        return Alert(title: Text("Soy una titulo"), message: Text("Soy con contenido de la alerta"), primaryButton: .default(Text("Aceptar")), secondaryButton: cancelar)
    }
    
    var body: some View {
        Button("Mostrar Alerta") {
            self.bMostrado.toggle()
        }
        .alert(isPresented: $bMostrado) {
            self.alerta
        }
        .padding()
        .padding(.trailing, 30)
        .padding(.leading, 30)
        .foregroundColor(.white)
        .background(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
