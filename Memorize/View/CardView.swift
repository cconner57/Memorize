import SwiftUI

struct CardView: View {
	var fruit: String
	@State var isClicked = false
	
	var body: some View {
		ZStack {
			if isClicked {
				Rectangle()
					.foregroundColor(.white)
					.border(Color.red, width: 5)
				Text(fruit)
					.font(.largeTitle)
			} else {
				Rectangle()
					.foregroundColor(.red)
					.border(Color.red, width: 5)
			}
		}
		.onTapGesture(perform: {
			isClicked.toggle()
		})
		.aspectRatio(2/3, contentMode: .fill)
		.cornerRadius(5)
	}
}
