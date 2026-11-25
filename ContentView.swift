import SwiftUI

struct ContentView: View {
    @State private var isEnabled = false
    @State private var proxyIP = "13.245.183.150"
    @State private var proxyPort = "47440"

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 25) {
                Text("LUNYX PROXY")
                    .font(.largeTitle.bold())
                    .foregroundColor(.cyan)

                Text("FREE FIRE NETWORK TOOL")
                    .foregroundColor(.gray)

                Toggle("PROXY STATUS", isOn: $isEnabled)
                    .tint(.cyan)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.white.opacity(0.08))
                    .cornerRadius(15)

                Group {
                    TextField("Proxy IP", text: $proxyIP)
                    TextField("Port", text: $proxyPort)
                        .keyboardType(.numberPad)
                }
                .textFieldStyle(.roundedBorder)

                Text(isEnabled ? "PROXY ENABLED" : "PROXY DISABLED")
                    .foregroundColor(isEnabled ? .green : .red)
                    .font(.headline)

                Spacer()

                Text("LUNYX • iOS 18")
                    .foregroundColor(.gray)
            }
            .padding(25)
        }
    }
}
