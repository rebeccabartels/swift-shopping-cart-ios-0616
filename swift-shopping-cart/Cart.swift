//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Rebecca Bartels on 8/5/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//
import Foundation

 var items: [Item] = []

class Cart {


    

    func totalPriceInCents() -> Int{
        var sum : Int = 0
        
        for item in items {
            sum = sum + item.priceInCents
            
        print(sum)
            
        }
        
        return sum
        
        //This method should return the total cost of all the items in the items array.
    }
    
    
    func addItem(item: Item) {
        items.append(item)
        //appending item to the items array.

        
    }
    
    
    func removeItem(item: Item) {
        if let index = items.indexOf(item) {
            items.removeAtIndex(index)
        }
        
    }

    func itemsWithName(name:String) -> [Item] {
     
        
        var matches = [Item]()
        // matches is assigned to the initialized items within items array
        
        for item in items {
            if item.name == name {
                matches.append(item)
            }
            // if item name is identicle to the matches item names (declared in variable) then we can append that item to matches.
        }
        
        return matches
        }
        
        //This method should collect all of the items in the items property array whose name property matches the submitted string argument.
    }
    
    func itemsWithMinimumPriceInCents(priceInCents: Int) -> [Item] {
        //This method should collect all of the items in the items property array whose priceInCents property is greater than or equal to the submitted integer argument.
        var matches = [Item]()
        //collecting all initialized items within items property array.
        
        for item in items {
            if item.priceInCents >= priceInCents {
                matches.append(item)
            }
        }// for item in items, if the item price in cents is greater than or equal to price in cents int then execute the code that appends the items to the matches in the items array.
        
        return matches
    }
    
    func itemsWithMaximumPriceInCents(priceInCents: Int) -> [Item] {
        var matches = [Item]()
    
        for item in items {
            if item.priceInCents <= priceInCents {
            matches.append(item)
        }
    }
    
    return matches
} 

