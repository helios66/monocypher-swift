//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Monocypher playground"

struct Monocypher {
    static let w = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
                    "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "[", "-" , "+" , "." , "^" , "@" , "_" , ":" , "*" , "," , "]"]
    
    static let uw = ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "A", "S", "D", "F", "G", "H", "J", "K", "L", "Z", "X", "C", "V", "B", "N", "M","5", "9", "6", "7","8", "1", "2", "3","0", "4", "-" , "_" , ":" , ",", "[" ,"]", "+" , "." , "^", "*" , "@"]
    
    
    public static func enc(value: String!) -> String! {
        var c: [String] = [];
        for i in value.characters.indices {
            for (index, _) in w.enumerated() {
                if(String(value[i]).lowercased() == w[index]){
                    c.append(uw[index])
                    break;
                }
            }
        }
        return c.joined();
    }
    
    public static func dc(value: String!) -> String! {
        var p1: [String] = [];
        for i in value.characters.indices {
            for (index, _) in uw.enumerated() {
                if(String(value[i]) == uw[index]){
                    p1.append(w[index])
                }
            }
        }
        return p1.joined();
    }
    
    
    public static func execute() {
        debugPrint(Monocypher.enc(value: "user1234@abc.com"));
        debugPrint(Monocypher.dc(value: Monocypher.enc(value: "user1234@abc.com")));
    }
    
}

Monocypher.execute();