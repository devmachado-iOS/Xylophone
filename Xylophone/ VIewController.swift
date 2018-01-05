
import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate{
    
    var audioPlayer: AVAudioPlayer!
    var audios: [String] = ["note1","note2","note3","note4","note5","note6","note7"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        playSound(index: sender.tag - 1)
    }
    
    
    func playSound(index: Int){
        
        let soundURL = Bundle.main.url(forResource: audios[index], withExtension: "wav")
        
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }catch{
            print(error)
        }
            audioPlayer.play()
    }

}
