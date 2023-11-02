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
        let urlString = "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current=temperature_2m"
        let url = URL(string: urlString)!
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data, let weather = try? JSONDecoder().decode(WeatherData.self, from: data){
                DispatchQueue.main.async {
                    self.weatherLabel.text = "\(weather.current.temperature2M) \(weather.currentUnits.temperature2M)"
                }
            } else {
                print("Fail!")
            }
        }
        task.resume()
    }
    
}

