//
//  GithubRepoTableViewCell.swift
//  AlamofireObjectMapperKit
//
//  Created by Becerra Borges, Eduardo Yorman on 20/11/21.
//  Copyright © 2021 Sakura Software. All rights reserved.
//

import UIKit
import Font_Awesome_Swift

class GithubRepoTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setData(_ repo: GithubRepo) {
        nameLabel.text = repo.name
        languageLabel.text = repo.language
        starLabel.setFAText(prefixText: "", icon: .FAStar, postfixText: " \(repo.stargazersCount)", size: 14)
        forkLabel.setFAText(prefixText: "", icon: .FACodeFork, postfixText: " \(repo.forks)", size: 14)
    }
}
