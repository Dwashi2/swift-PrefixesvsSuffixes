//
//  ViewController.swift
//  PrefixesvsSuffixes
//
//  Created by Daniel Washington Ignacio on 11/06/21.
//

/*
 Create two functions: isPrefix(word, prefixer-) and isSuffix(word, -suffixer).

 isPrefix should return true if it begins with the prefix argument.
 isSuffix should return true if it ends with the suffix argument.
 Otherwise return false.

 Examples

 isPrefix("automation", "auto-") ➞ true

 isSuffix("arachnophobia", "-phobia") ➞ true

 isPrefix("retrospect", "sub-") ➞ false

 isSuffix("vocation", "-logy") ➞ false
 Notes

 The prefixer and suffixer arguments have dashes - in them.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.isPrefix("automation", "auto-"))
        print(self.isSuffix("arachnophobia", "-phobia"))
        print(self.isPrefix("retrospect", "sub-"))
        print(self.isSuffix("vocation", "-logy"))
    }
    
    func isPrefix(_ word: String, _ prefixer: String) -> Bool {
        var newPrefixer = prefixer
        newPrefixer = newPrefixer.replacingOccurrences(of: "-", with: "")
        return word.contains(newPrefixer)
    }

    func isSuffix(_ word: String, _ suffixer: String) -> Bool {
        var newSuffixer = suffixer
        newSuffixer = newSuffixer.replacingOccurrences(of: "-", with: "")
        return word.contains(newSuffixer)
    }


}

