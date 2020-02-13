//
//  EmojiArtDocumentTableViewController.swift
//  TableViewDragAndDrop
//
//  Created by Jian Luo on 2020/2/10.
//  Copyright © 2020 Jian Luo. All rights reserved.
//

import UIKit

class EmojiArtDocumentTableViewController: UITableViewController {

    var emojiArtDocuments = ["One", "Two", "Three"]
    
    @IBAction func newEmojiArt(_ sender: UIBarButtonItem) {
        emojiArtDocuments += ["Untitled".madeUnique(withRespectTo: emojiArtDocuments)]
        tableView.reloadData()
    }
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        //控制master view controller hidden or show
        if splitViewController?.preferredDisplayMode != .primaryOverlay{
            splitViewController?.preferredDisplayMode = .primaryOverlay
        }
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojiArtDocuments.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DocumentCell", for: indexPath)
        cell.textLabel?.text = emojiArtDocuments[indexPath.row]
        return cell
    }
    // 右滑动删除
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            emojiArtDocuments.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }


}
