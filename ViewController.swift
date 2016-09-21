//
//  ViewController.swift
//  emojiDictionary
//
//  Created by Angelo Micheletti on 8/24/16.
//  Copyright © 2016 Angelo Micheletti. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myGreatView: UITableView!
    
    var emojis : [Emoji] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myGreatView.dataSource = self
        myGreatView.delegate = self
        emojis = makeEmojiArray()
        
    }
    //Number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    //Row contents
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //not intuitive to me where this comes from
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😇"
        emoji1.birthYear = 2008
        emoji1.category = "Smiley"
        emoji1.definition = "The Angelic Guy"
        
        let emoji2 = Emoji()
         emoji2.stringEmoji = "😀"
         emoji2.birthYear = 2010
         emoji2.category = "Smiley"
         emoji2.definition = "Nice Smile"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😎"
        emoji3.birthYear = 1999
        emoji3.category = "Smiley"
        emoji3.definition = "Cool dude"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😡"
        emoji4.birthYear = 2000
        emoji4.category = "Smiley"
        emoji4.definition = "Really ticked off"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🍉"
        emoji5.birthYear = 2002
        emoji5.category = "Food"
        emoji5.definition = "Watermelon"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🏈"
        emoji6.birthYear = 2005
        emoji6.category = "Sports"
        emoji6.definition = "Nice football"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "⛷"
        emoji7.birthYear = 2008
        emoji7.category = "Sports"
        emoji7.definition = "Going skiing"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "✈️"
        emoji8.birthYear = 2003
        emoji8.category = "Planes"
        emoji8.definition = "Love the 747"
        
        let emoji9 = Emoji()
        emoji9.stringEmoji = "❤️"
        emoji9.birthYear = 2014
        emoji9.category = "Anatomy"
        emoji9.definition = "A heart"
        
        let emoji10 = Emoji()
        emoji10.stringEmoji = "🇺🇸"
        emoji10.birthYear = 1999
        emoji10.category = "Flags"
        emoji10.definition = "Grand Old Flag"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9, emoji10]
    }
    
}

