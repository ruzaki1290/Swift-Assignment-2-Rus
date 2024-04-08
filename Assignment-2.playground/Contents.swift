import UIKit


// ASSIGNMENT II

// This function checks for distance of potenital customers who are within the range of businesses two locations. If the customer is within the range of one of two locations, they get an invite message and their email displayed as well.



// 1. Meditation studio struct, multiple locations
let studioLocation1 = (4, 4)
let studioRange1: Double = 3.3

let studioLocation2 = (8, 8)
let studioRange2: Double = 4.2


// 2. Customer struct
struct Customer {
    var name: String
    var email: String
    var phone: Int
    var status: Bool
    var location: (x: Int, y: Int)
}

// 3. Checking range from the studio location to a potential customer
func distance(
from source: (x: Int, y: Int),
to target: (x: Int, y: Int)
) -> Double {
    let distanceX = Double(source.x - target.x)
    let distanceY = Double(source.y - target.y)
    return (distanceX * distanceX + distanceY * distanceY).squareRoot()
}


// 4. Array of customers
var customersList: [Customer] = []

var c = Customer(name: "John", email: "john@mail.com", phone: 6471111111, status: true, location: (x: 1, y: 1))
customersList.append(c)
c = Customer(name: "Sean", email: "sean@mail.com", phone: 6472222222, status: true, location: (x: 14, y: 14))
customersList.append(c)
c = Customer(name: "Alice", email: "alice@mail.com", phone: 6473333333, status: true, location: (x: 3, y: 3))
customersList.append(c)
c = Customer(name: "Alex", email: "alex@mail.com", phone: 6474444444, status: true, location: (x: 19, y: 19))
customersList.append(c)
c = Customer(name: "Tom", email: "tom@mail.com", phone: 6475555555, status: true, location: (x: 6, y: 6))
customersList.append(c)
c = Customer(name: "Ben", email: "ben@mail.com", phone: 6476666666, status: true, location: (x: 23, y: 23))
customersList.append(c)
c = Customer(name: "Robin", email: "robin@mail.com", phone: 6477777777, status:true, location: (x: 4, y: 4))
customersList.append(c)
c = Customer(name: "Jill", email: "jill@mail.com", phone: 6478888888, status: true, location: (x: 25, y: 25))
customersList.append(c)
c = Customer(name: "James", email: "james@mail.com", phone: 6479999999, status: true, location: (x: 5, y: 5))
customersList.append(c)
c = Customer(name: "Adrian", email: "adrian@mail.com", phone: 6471010101, status: true, location: (x: 27, y: 27))
customersList.append(c)


// 5. Displaying emails of customers who are within the range

func checkCustomersInRange(customersList: [Customer]) {
    for customer in customersList {
        let customerLocation = (x: customer.location.x, y: customer.location.y)
        let distanceToStudioLocation1 = distance(from: customerLocation, to: studioLocation1)
//        let distanceToStudioLocation2 = distance(from: customerLocation, to: studioLocation2) // For two studio locations
        
        if distanceToStudioLocation1 <= studioRange1 /*|| distanceToStudioLocation2 <= studioRange2  /* For two studio locations*/*/ {
            print("Dear \(customer.name), we would like to invite you to our studio! Email: \(customer.email)")
        }
    }
}

checkCustomersInRange(customersList: customersList)
