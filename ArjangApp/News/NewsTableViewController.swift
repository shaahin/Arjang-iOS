//
//  NewsTableViewController.swift
//  ArjangApp
//
//  Created by Shahin Katebi on 9/18/18.
//  Copyright © 2018 Seeb. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {

    // model
    var newsResult: Result?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlString = "https://newsapi.org/v2/everything?q=iran&from=2018-08-18&sortBy=publishedAt&apiKey=6e6c8b1a9e8c44f8af6fcb110567d0b1"
        
        let dataTask = URLSession.shared.dataTask(with: URL(string: urlString)!) { (data, response, error) in
            // after executing the dataTask
            if let error = error {
                print("ERROR: \(error)")
            }else{
                if let data = data {
                    // data exists
                    if let result = try? JSONDecoder().decode(Result.self, from: data)
                    {
                        // I have the result! Hooray!
                        self.newsResult = result
                        let alert = UIAlertController(title: "CIW", message: "Content Loaded! Please Refresh", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                        self.present(alert, animated: true, completion: nil)
                        
                    }
                }
                
            }
        }
        
        dataTask.resume()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //let count = newsResult == nil ? 0 : newsResult!.articles!.count
        return newsResult?.articles?.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "news cell", for: indexPath)

        // Configure the cell...
        let article = newsResult!.articles![indexPath.row]
        cell.textLabel?.text = article.title
        cell.detailTextLabel?.text = article.source?.name
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "go to details" {
            //let destination = segue.destination as
            //which article ??
            let cell = sender as! UITableViewCell
            // WRONG: cell.textLabel?.text
            if let indexPath = tableView.indexPath(for: cell) {
                let article = newsResult!.articles![indexPath.row]
                
            }
            
            
            
        }
    }

    @IBAction func refresh(_ sender: UIBarButtonItem) {
        tableView.reloadData()
        
    }
}
