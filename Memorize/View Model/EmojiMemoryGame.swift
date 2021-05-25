import SwiftUI

class EmojiMemoryGame: ObservableObject {
	static let fruits = ["🍎","🍐","🍊","🍓","🍉","🫐","🍒","🍑","🥭","🍍","🥝"]
	static let animals = ["🦆","🦉","🐢","🐍","🐊","🦭","🦓","🦍","🐘","🐪","🦘"]
	static let vehicles = ["🚗","🚓","🚑","🛻","🚜","🚀","🛸","🚁","⛵️","🚒","🛵"]
	
	static func createMemoryGame() -> MemoryGame<String> {
		MemoryGame<String>(numberOfPairOfCards: 4) { pairIndex in
			fruits[pairIndex]
		}
	}

	@Published private var model: MemoryGame<String> = createMemoryGame()
	
	var cards: Array<MemoryGame<String>.Card> {
		return model.cards
	}
	
	// Mark: - Intent(s)
	
	func choose(_ card: MemoryGame<String>.Card) {
		model.choose(card)
	}
}
