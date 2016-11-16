import UIKit
import AVKit
import AVFoundation

class VideoPlayerVC: UIViewController {
    
    private var firstAppear = true
    public var choice = ""
    
    @IBOutlet weak var choiceLabel: UILabel!
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        choiceLabel.text = UserState.sharedInstance.getBodyPartChoice()
        
        if firstAppear {
            do {
                var videoName = ""
                switch (UserState.sharedInstance.getBodyPartChoice()) {
                    case "Tummy":
                        videoName = "Tummy"
                        break;
                    case "Ears":
                        videoName = "Ears"
                        break;
                    case "Head":
                        videoName = "Neck"
                        break;
                    case "Neck":
                        videoName = "Neck"
                        break;
                    case "Arms":
                        videoName = "Armz"
                        break;
                    case "Legs":
                        videoName = "Legs"
                        break;
                    
                    default:
                        videoName = "Armz"
                }
                
                try playVideo(videoTitle: videoName)
                firstAppear = false
            } catch AppError.InvalidResource(let name, let type) {
                debugPrint("Could not find resource \(name).\(type)")
            } catch {
                debugPrint("Generic error")
            }
        }
        
        print(UserState.sharedInstance.getBodyPartChoice())
    }
    
    private func playVideo(videoTitle: String) throws {
        guard let path = Bundle.main.path(forResource: videoTitle, ofType:"mp4") else {
            throw AppError.InvalidResource(videoTitle, "mp4")
        }
        let videoPlayer = AVPlayer(url: NSURL(fileURLWithPath: path) as URL)
        let videoController = AVPlayerViewController()
        videoController.player = videoPlayer
        
        videoController.view.frame = CGRect(origin: CGPoint(x: 0, y: self.view.bounds.height * 0.25), size: CGSize(width: self.view.frame.width, height: 300))
        self.view.addSubview(videoController.view)
        self.addChildViewController(videoController)
        videoPlayer.play()
    }
}

enum AppError : Error {
    case InvalidResource(String, String)
}
