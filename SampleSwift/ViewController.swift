//
//  ViewController.swift
//  SampleSwift
//
//  Created by iSquare infoTech on 2/3/17.
//  Copyright © 2017 MitsSoft. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage
import QRCode
class ViewController: UIViewController {
    
    public enum HTTPMethod: String {
        case options = "OPTIONS"
        case get     = "GET"
        case head    = "HEAD"
        case post    = "POST"
        case put     = "PUT"
        case patch   = "PATCH"
        case delete  = "DELETE"
        case trace   = "TRACE"
        case connect = "CONNECT"
    }
    @IBOutlet weak var profile: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let url = URL(string: "https://charityvine.com/upload/project/commoncard/project_56246.png")!
//        var qrCode = QRCode(url)
//         qrCode?.size = CGSize(width: 300, height: 300)
//        qrCode?.color = CIColor(rgba: "16a085")
//        qrCode?.backgroundColor = CIColor(rgba: "000")
//         profile = UIImageView(qrCode: qrCode!)
       // profile = UIImageView
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func downloadFileProcess(_ sender: Any) {
        
        
        //drag and drop Image show
//        let url = Bundle.main.url(forResource: "1", withExtension: "png")!
//        let data = try! Data(contentsOf: url)
//        let image = UIImage(data: data, scale: UIScreen.main.scale)!
//        
//        image.af_inflate()
//        self.profile.image = image;
        
        
//        Scaling drag and drop project image
//        let image = UIImage(named: "1")!
//        let size = CGSize(width: 100.0, height: 100.0)
//        
//        // Scale image to size disregarding aspect ratio
//        let scaledImage = image.af_imageScaled(to: size)
//        
//        // Scale image to fit within specified size while maintaining aspect ratio
//        let aspectScaledToFitImage = image.af_imageAspectScaled(toFit: size)
//        
//        // Scale image to fill specified size while maintaining aspect ratio
//        let aspectScaledToFillImage = image.af_imageAspectScaled(toFill: size)
//        
//        self.profile.image = image;
        
        
//        Rounded Corners
//        let image = UIImage(named: "1")!
//        let radius: CGFloat = 20.0
//        
//        let roundedImage = image.af_imageRounded(withCornerRadius: radius)
//        let circularImage = image.af_imageRoundedIntoCircle()
//        
//        self.profile.image = image;
        
        
        
//        Image Filters
//        let image = UIImage(named: "1")!
//        
//        let sepiaImage = image.af_imageFiltered(withCoreImageFilter: "CISepiaTone")
//        
//        let blurredImage = image.af_imageFiltered(
//            withCoreImageFilter: "CIGuassianBlur",
//            parameters: ["inputRadius": 25]
//        )
//        self.profile.image = image;
        
//        Single Pass
        let image = UIImage(named: "1")!
        let imageFilter = RoundedCornersFilter(radius: 10.0)
        
        let roundedImage = imageFilter.filter(image)
         self.profile.image = image;
        
       // Multi-Pass
       // The multi-pass image filters perform multiple operations on the specified image.
//        let image = UIImage(named: "1")!
//        let size = CGSize(width: 100.0, height: 100.0)
//        let imageFilter = AspectScaledToFillSizeCircleFilter(size: size)
//        
//        let avatarImage = imageFilter.filter(image)
//         self.profile.image = image;
//
        
//        Image Cache
//        Image caching can become complicated when it comes to network images. URLCache is quite powerful and does a great job reasoning through the various cache policies and Cache-Control headers. However, it is not equiped to handle caching multiple modified versions of those images.
//        
//        let imageCache = AutoPurgingImageCache(
//            memoryCapacity: 100_000_000,
//            preferredMemoryUsageAfterPurge: 60_000_000
//        )

//        Add / Remove / Fetch Images
//        let imageCache = AutoPurgingImageCache()
//        let avatarImage = UIImage(data: data)!
//        
//        // Add
//        imageCache.add(avatarImage, withIdentifier: "avatar")
//        
//        // Fetch
//        let cachedAvatar = imageCache.image(withIdentifier: "avatar")
//        
//        // Remove
//        imageCache.removeImage(withIdentifier: "avatar")
//        
//        
//        
        
//        URL Requests
//        The ImageRequestCache protocol extends the ImageCache protocol by adding support for URLRequest caching. This allows a URLRequest and an additional identifier to generate the unique identifier for the image in the cache.
//        
//        let imageCache = AutoPurgingImageCache()
//        
//        let urlRequest = URLRequest(url: URL(string: "https://httpbin.org/image/png")!)
//        let avatarImage = UIImage(named: "avatar")!.af_imageRoundedIntoCircle()
//        
//        // Add
//        imageCache.add(avatarImage, for: urlRequest, withIdentifier: "circle")
//        
//        // Fetch
//        let cachedAvatarImage = imageCache.image(for: urlRequest, withIdentifier: "circle")
//        
//        // Remove
//        imageCache.removeImage(for: urlRequest, withIdentifier: "circle")
//        Auto-Purging
//        Each time an image is fetched from the cache, the cache internally updates the last access date for that image.
//        
//        let avatar = imageCache.image(withIdentifier: "avatar")
//        let circularAvatar = imageCache.image(for: urlRequest, withIdentifier: "circle")

        
//        Image Downloader
//        let imageDownloader = ImageDownloader(
//            configuration: ImageDownloader.defaultURLSessionConfiguration(),
//            downloadPrioritization: .fifo,
//            maximumActiveDownloads: 4,
//            imageCache: AutoPurgingImageCache()
//        )
        
        
//        Downloading an Image
//        
//        let downloader = ImageDownloader()
//        let urlRequest = URLRequest(url: URL(string: "https://httpbin.org/image/jpeg")!)
//        
//        downloader.download(urlRequest) { response in
//            print(response.request)
//            print(response.response)
//            debugPrint(response.result)
//            
//            if let image = response.result.value {
//                print(image)
//            }
//        }
        
//        Applying an ImageFilter
//        let downloader = ImageDownloader()
//        let urlRequest = URLRequest(url: URL(string: "https://httpbin.org/image/jpeg")!)
//        let filter = AspectScaledToFillSizeCircleFilter(size: CGSize(width: 100.0, height: 100.0))
//        
//        downloader.download(urlRequest, filter: filter) { response in
//            print(response.request)
//            print(response.response)
//            debugPrint(response.result)
//            
//            if let image = response.result.value {
//                print(image)
//            }
//        }
        
        //=================
//        Setting Image with URL
//        let imageView = UIImageView(frame: frame)
//        let url = URL(string: "https://httpbin.org/image/png")!
//        
//        imageView.af_setImage(withURL: url)
        
        
//        Placeholder Images
//        By specifying a placeholder image, the image view uses the placeholder image until the remote image is downloaded.
//        
//        let imageView = UIImageView(frame: frame)
//        let url = URL(string: "https://httpbin.org/image/png")!
//        let placeholderImage = UIImage(named: "placeholder")!
//        
//        imageView.af_setImage(withURL: url, placeholderImage: placeholderImage)
        
//        Image Filters
//        let imageView = UIImageView(frame: frame)
//        
//        let url = URL(string: "https://httpbin.org/image/png")!
//        let placeholderImage = UIImage(named: "placeholder")!
//        
//        let filter = AspectScaledToFillSizeWithRoundedCornersFilter(
//            size: imageView.frame.size,
//            radius: 20.0
//        )
//        
//        imageView.af_setImage(
//            withURL: url,
//            placeholderImage: placeholderImage,
//            filter: filter
//        )
        
//        Image Transitions
//        let imageView = UIImageView(frame: frame)
//        
//        let url = URL(string: "https://httpbin.org/image/png")!
//        let placeholderImage = UIImage(named: "placeholder")!
//        
//        let filter = AspectScaledToFillSizeWithRoundedCornersFilter(
//            size: imageView.frame.size,
//            radius: 20.0
//        )
//        
//        imageView.af_setImage(
//            withURL: url,
//            placeholderImage: placeholderImage,
//            filter: filter,
//            imageTransition: .crossDissolve(0.2)
//        )
        
        
        
        
        /* Alamofire.request("http://static.abplive.in/wp-content/uploads/sites/7/2017/02/04162821/63.jpg").responseImage { response in
            debugPrint(response)
            
         
            debugPrint(response.result)
            
            if let image = response.result.value {
                self.profile.image = image;
                print("image downloaded: \(image)")
            }
        }*/

        
        
    }
    
    
    
    
    @IBAction func submitGetMethod(_ sender: Any) {
        Alamofire.request("http://armigesfahani.com/tannis/tannisadmin/get_news.php")
            .responseString { response in
                print("Response String: \(response.result.value)")
            }
            .responseJSON { response in
                print("Response JSON: \(response.result.value)")
        }
    }
    
    
    @IBAction func Submitbtnpressed(_ sender: Any) {
        
        let parameters: Parameters = ["sender_id": "32","receiver_id":"3"]
        
        Alamofire.request("http://www.getbusiness.in/findmyfriend/webapi/get_message.php", method: .post, parameters: parameters, encoding: JSONEncoding.default)
            
            .responseString { response in
                print("Response String: \(response.result.value)")
            }
            .responseJSON { response in
                print("Response JSON: \(response.result.value)")
        }
        
    }
    //Button
    @IBAction func Submit(_ sender: Any) {
        
        
        let parameters: Parameters = ["sender_id": "32","receiver_id":"3","sender_type":"sender","message":"ABC"]
        
        Alamofire.request("http://www.getbusiness.in/findmyfriend/webapi/send_message.php", parameters: parameters)
            .responseString { response in
                print("Response String: \(response.result.value)")
            }
            .responseJSON { response in
                print("Response JSON: \(response.result.value)")
        }
        
    }
}
