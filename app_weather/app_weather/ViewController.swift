//
//  ViewController.swift
//  app_weather
//
//  Created by Александр Алешин on 01.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var  weatherLabel: UILabel!
    @IBOutlet var getButtonWeather: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getButtonWeather.addTarget(self, action: #selector(didTapGetWeatherButtun), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    @objc func didTapGetWeatherButtun() {
        weatherLabel.text = "text"
    }

}

