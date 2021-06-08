import SwiftUI

class EmojiMemoryGame: ObservableObject {
	typealias Card = MemoryGame<String>.Card
	
	private static let fruits = ["🍎","🍐","🍊","🍓","🍉","🫐","🍒","🍑","🥭","🍍","🥝"]
	private static let animals = ["🦆","🦉","🐢","🐍","🐊","🦭","🦓","🦍","🐘","🐪","🦘"]
	private static let vehicles = ["🚗","🚓","🚑","🛻","🚜","🚀","🛸","🚁","⛵️","🚒","🛵"]
	
	static func createMemoryGame() -> MemoryGame<String> {
		MemoryGame<String>(numberOfPairOfCards: 10) { pairIndex in
			fruits[pairIndex]
		}
	}

	@Published private var model = createMemoryGame()
	
	var cards: Array<Card> {
		return model.cards
	}
	
	// Mark: - Intent(s)
	
	func choose(_ card: Card) {
		model.choose(card)
	}
}
