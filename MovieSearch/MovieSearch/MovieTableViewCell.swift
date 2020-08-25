//
//  MovieTableViewCell.swift
//  MovieSearch
//
//  Created by Scott on 8/25/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet var moviePostImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static let identifier = "MovieTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MovieTableViewCell", bundle: nil)
    }
    
    func configure(with model: Movie) {
        let url = model.Poster
        if let data = try? Data(contentsOf: URL(string: url)!) {
            self.moviePostImageView.image = UIImage(data: data)
        }
        
    }
}
