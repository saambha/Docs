Mocking tests can be done in following different ways:
1. Dummy: It allows you to create dummy class for protocols and to be used as DI.
e.g. let sut = Square(saver: Dummy())

class DummyTestSpecs: QuickSpec {

    override func spec() {

        describe("Testing Dummy class") {
            it("Should save vlaue"){

                let sut = Square(saver: Dummy())
                sut.side = 2

                expect(sut.area).to(equal(4.0))
            }
        }
    }
}
//-------------------
2. Fake Class: This is used when you want to avoid complex computation. Create fake class/data
   to test and test it against expected value.

   class FakeTestSpecs: QuickSpec{

    override func spec() {

        let usersRepo = UserRepo(fetchHleper: FakeClass())
        describe("Test Fake Approach") {

            it("shoudl print 2 users"){

                expect(usersRepo.printStats()).to(equal("Total number of users : 2"))
            }
        }
    }
}

class FakeClass: FetchLoggedInUsers{

    func fetchUsersList() -> [Users] {
        return [Users(name:"Anoop", id: 1),Users(name:"sharma", id: 2)]
    }
}
//-------------------

3. Spy: to cover the code, using bool if the method was invoked.
class MockUserClass: FetchLoggedInUsers{

    var isFetchCalled = false

    func fetchUsersList() -> [Users] {
        isFetchCalled = true
        return []
    }
}
//-------------------

4. Stub: Ti check how many times the method was called.
//-------------------

5. Mock:
