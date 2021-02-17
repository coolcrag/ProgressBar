//
//  ViewController.swift
//  progress bar
//
//  Created by Дмитрий Лапшин on 04.01.2021.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    @IBOutlet weak var pushButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var counterPressed: UILabel!
    @IBOutlet weak var timerButton: UIButton!
    var startProgress: Float = 0.0
    var finishProgress: Float = 10.0
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func timerButtonPressed(_ sender: UIButton) {
timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(funcForTimer), userInfo: nil, repeats: true)
    }
    @objc func funcForTimer(){
        counterPressed.text = startProgress.description
        progressBar.progress = startProgress / finishProgress
        startProgress += 1
        if startProgress > finishProgress {
            timer.invalidate()
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
                self.updateAll()
            })
        }
        
    }
    func updateAll(){
        startProgress = 0.0
        timer.invalidate()
        counterPressed.text = "0"
        progressBar.progress = 0.0
    }

    @IBAction func pushPressed(_ sender: UIButton) {
        counterPressed.text = startProgress.description
        progressBar.progress = startProgress / finishProgress
        startProgress += 1
        
        if startProgress > finishProgress {
            startProgress = 0
        }
    }
}

