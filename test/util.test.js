
const message = require("../util/genlib")



// stringParser.test The goal of this module is to test our stringParser in different hypothetical situations
// We do for now 4 tests in total



test("Im just checking to see that I can run CI/CD motions",() => {

    
    
    let arrObj =  message.test()

    expect(arrObj).toBe("just CI")
})