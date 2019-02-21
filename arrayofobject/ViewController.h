//
//  ViewController.h
//  arrayofobject
//
//  Created by user148840 on 2/19/19.
//  Copyright © 2019 user148840. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>{
 
NSMutableArray *arrayData;
    
NSMutableArray *arrayAllData;
NSArray *searchResults;
}

@property (strong, nonatomic) UISearchController *searchController;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@end

