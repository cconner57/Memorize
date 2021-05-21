import SwiftUI

struct ContentView: View {
	var fruits = ["🍎","🍐","🍊","🍓","🍉","🫐","🍒","🍑","🥭","🍍","🥝"]
	var animals = ["🦆","🦉","🐢","🐍","🐊","🦭","🦓","🦍","🐘","🐪","🦘"]
	var vehicles = ["🚗","🚓","🚑","🛻","🚜","🚀","🛸","🚁","⛵️","🚒","🛵"]
	
	@State var category = "fruits"
	
	var body: some View {
		VStack {
			Text("Memorize!")
				.font(.largeTitle)
			ScrollView {
				LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))], content: {
					switch category {
					case "fruits":
						let shuffleArray = fruits.shuffled()
						ForEach(shuffleArray, id: \.self) { fruit in
							CardView(fruit: fruit)
						}
					case "animals":
						let shuffleArray = animals.shuffled()
						ForEach(shuffleArray, id: \.self) { fruit in
							CardView(fruit: fruit)
						}
					default:
						let shuffleArray = vehicles.shuffled()
						ForEach(shuffleArray, id: \.self) { fruit in
							CardView(fruit: fruit)
						}
					}
				})
				.padding(.horizontal)
			}
			HStack(alignment: .center) {
				Spacer()
				fruitCategory
				Spacer()
				animalCategory
				Spacer()
				vehicleCategory
				Spacer()
			}
		}
	}
	var fruitCategory: some View {
		Button(action: {category = "fruits"}, label: {
			VStack {
				Image(systemName: "applelogo")
					.font(.title)
				Text("Fruit")
					.font(.subheadline)
			}
		})
	}
	var animalCategory: some View {
		Button(action: {category = "animals"}, label: {
			VStack {
				Image(systemName: "hare")
					.font(.title)
				Text("Animals")
					.font(.subheadline)
			}
		})
	}
	var vehicleCategory: some View {
		Button(action: {category = "vehicles"}, label: {
			VStack {
				Image(systemName: "car")
					.font(.title)
				Text("Vehicles")
					.font(.subheadline)
			}
		})
	}
}


struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
