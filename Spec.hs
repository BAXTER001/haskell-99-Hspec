import Test.Hspec

-- myLast : Find the last element of a list.
myLast = undefined

--  myButLast : Find the last but one element of a list.
myButLast = undefined


-- elementAt : Find the K'th element of a list. The first element in the list is number 1.
elementAt = undefined


-- myLength : Find the number of elements of a list.
myLength = undefined

-- myReverse : Reverse a list
myReverse = undefined

-- isPalindrome : Find out whether a list is a palindrome. A palindrome can be read forward or backward.isPalindrome.
isPalindrome = undefined

-- my-flatten : Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements 
data NestedList a = Elem a | List [NestedList a]
my-flatten = undefined


-- compress : Eliminate consecutive duplicates of list elements.
compress = undefined

main :: IO ()
main = hspec $ do

	describe "myLast" $ do
		it "returns the first element of a list of Int" $ do
			myLast [1,2,3,4] `shouldBe` (4 :: Int)
		it "returns the first element of a list of Char" $ do
			myLast ['x','y','z'] `shouldBe` ('z' :: Char) 

	describe "myButLast" $ do
		it "returns the last but one element of a list of Int" $ do
			myButLast [1,2,3,4] `shouldBe` (3 :: Int)
		it "returns the last but one element of a list of Char" $ do
			myButLast ['a'..'z'] `shouldBe` ('y' :: Char) 

	describe "elementAt" $ do
		it "returns the Kth element of a list of Int" $ do
			elementAt [1,2,3] 2 `shouldBe` (2 :: Int)
		it "returns the Kth element of a list of Char" $ do
			elementAt "haskell" 5 `shouldBe` ('e' :: Char) 

	describe "myLength" $ do
		it "returns the number of elemennt in a list of Int" $ do
			myLength [123, 456, 789] `shouldBe` (2 :: Int)
		it "returns the number of elements in a list of Char" $ do
			myLength "Hello, world!" `shouldBe` ('e' :: Char) 
