//
//  ViewController.swift
//  Actors
//
//  Created by Elite- 77 on 26/03/18.
//  Copyright © 2018 Elite- 77. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let actors = ["Shahrukh Khan","Deepika Padukone","Salman Khan","Disha Patani", "Aamir Khan","Varun dhawan","Siddhart Malhotra","Akshay Kumar","Karan Singh","Priyanka Chopra", "Aishwarya Rai"]
    
    var desc = ["Shah Rukh Khan (born 2 November 1965), also known as SRK, is an Indian film actor, producer and television personality. Referred to in the media as the Badshah of Bollywood, King of Bollywood, King Khan, he has appeared in more than 80 Bollywood films, and earned numerous accolades, including 14 Filmfare Awards. Khan has a significant following in Asia and the Indian diaspora worldwide. In terms of audience size and income, he has been described as one of the most successful film stars in the world.",
                
                
            "Deepika Padukone (born 5 January 1986) is an Indian film actress. One of the highest-paid actresses in India, Padukone is the recipient of several awards, including three Filmfare Awards. She features in listings of the nation's most popular personalities. The daughter of the badminton player Prakash Padukone, was born in Copenhagen and raised in Bangalore. As a teenager, she played badminton in national level championships but left her career in the sport to become a fashion model. She soon received offers for film roles and made her acting debut in 2006 as the title character of the Kannada film Aishwarya.",
        
        "Abdul Rashid Salim Salman Khan (born 27 December 1965),credited as Salman Khan, is an Indian film actor, producer, singer and television personality. In a film career spanning almost thirty years, Khan has received numerous awards, including two National Film Awards and two Filmfare Awards. He has a significant following in Asia and the Indian diaspora worldwide, and is cited in the media as one of the most commercially successful actors of Indian cinema.",
        
        "Disha Patani is an Indian actress. She began her career with the Telugu film Loafer (2015), opposite Varun Tej, and followed it with the Hindi sports film M.S. Dhoni: The Untold Story (2016), starring Sushant Singh Rajput. Patani has also appeared in the music video Befikra with Tiger Shroff and an advertisement for Cadbury.",
        
        "Aamir Khan (born Mohammed Aamir Hussain Khan on 14 March 1965) is an Indian film actor, producer, director and television talk show host. Through his career spanning thirty years in Hindi films, Khan has established himself as one of the most popular and influential actors of Indian cinema. He is the recipient of numerous awards, including nine Filmfare Awards, four National Film Awards, and an AACTA Award, while one of his productions received an Academy Award nomination. He was honoured by the Government of India with the Padma Shri in 2003 and the Padma Bhushan in 2010.",
        
        "Varun Dhawan (born 24 April 1987) is an Indian actor. He is one of the country's highest-paid celebrities,and beginning in 2014, he appeared in Forbes India's Celebrity 100 list, based on his income and popularity. Each of the nine films in which he has starred were commercially successful, establishing Dhawan in Hindi cinema. The son of film director David Dhawan, he studied business management from the Nottingham Trent University, after which he worked as an assistant director to Karan Johar on the 2010 drama My Name Is Khan.",
        
        "Sidharth Malhotra (born 16 January 1985) is an Indian actor and former model who appears in Hindi films. Malhotra began a career as a model at the age of 18. Dissatisfied by the profession, he went on to work as an assistant director to Karan Johar in the 2010 film My Name Is Khan. He made his acting debut with a leading role in Johar's comedy-drama Student of the Year (2012), for which he received a Filmfare Award for Best Male Debut nomination.",
        
        "Akshay Kumar (born 9 September 1967), is an Indian-born Canadian actor, producer, martial artist, stuntman and television personality. In a career spanning more than twenty five years, Kumar has appeared in over a hundred Hindi films and has won several awards including the National Film Award for Best Actor for his performance in Rustom and two Filmfare Awards.",
        
        "Karan Singh Grover (born 23 February 1982) is an Indian Actor known for his work in Indian television series such as Dil Mil Gayye and Qubool Hai. He has also starred in the Indian films Alone and Hate Story 3. Born in New Delhi, India to a Punjabi Sikh family. He has one younger brother. When he was young his family moved to Al Khobar, Saudi Arabia. He did his schooling in Dammam, Saudi Arabia, and then pursued a degree in Hotel Management from IHM Mumbai. He then worked as a Marketing Executive in the Sheraton Hotel in Oman.",
        
        
        
        "Priyanka Chopra (born 18 July 1982) is an Indian actress, singer, film producer, philanthropist, and the winner of the Miss World 2000 pageant. One of India's highest-paid and most popular celebrities, Chopra has received numerous awards, including a National Film Award and five Filmfare Awards. In 2016, the Government of India honoured her with the Padma Shri, the fourth highest civilian award and Time magazine named her one of the 100 most influential people in the world. Forbes listed her among the World's 100 Most Powerful Women in 2017.",
        
        
        
        "Aishwarya Rai (born 1 November 1973), also known by her married name Aishwarya Rai Bachchan, is an Indian actress, model and the winner of the Miss World 1994 pageant. Through her successful acting career, she has established herself as one of the most popular and influential celebrities in India. She has received numerous accolades, including two Filmfare Awards from eleven nominations, and she was honoured with the Padma Shri by the Government of India in 2009 and the Ordre des Arts et des Lettres by the Government of France in 2012. She has often been cited in the media as the most beautiful woman in the world."]
        
    
    var images = [UIImage(named: "shah.jpeg")!,UIImage(named: "deep.jpg"), UIImage(named: "salman.jpg"),UIImage(named: "dish.jpg"), UIImage(named: "aam.jpg") ,UIImage(named: "var.jpg"), UIImage(named: "sid.jpeg"), UIImage(named: "aks.jpg"), UIImage(named: "ksg.jpeg"),  UIImage(named: "priy.jpg"),  UIImage(named: "aish.jpg")]
    
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return actors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ActorTableViewCell
        cell.accessoryType = .disclosureIndicator
        cell.lblActorName?.text = "\(actors[indexPath.row])"
        cell.lblActorDesc?.text = "Click To View Details"
        cell.actorImageView?.image = images[indexPath.row]
        let width : CGFloat = (cell.actorImageView?.bounds.height)!/2
        cell.actorImageView?.layer.cornerRadius = width
        cell.actorImageView?.layer.masksToBounds = false
        cell.actorImageView?.clipsToBounds = true
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "descViewController") as! DescViewController
        vc.actorImage = images[indexPath.row]!
      vc.actorName = "\(actors[indexPath.row])"
        vc.desc = "\(desc[indexPath.row])"
       
        
        self.present(vc, animated: true, completion: nil)
    }
    
   
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
  


        override func viewDidLoad() {
        super.viewDidLoad()
            
       
            
         //   tableView.rowHeight = UITableViewAutomaticDimension
           // tableView.estimatedRowHeight = 44
            
            //tableView.reloadData()
            
            
            
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
       
        
        
        // Dispose of any resources that can be recreated.
    }


}

