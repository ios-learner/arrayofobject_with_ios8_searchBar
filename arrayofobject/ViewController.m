//
//  ViewController.m
//  arrayofobject
//
//  Created by user148840 on 2/19/19.
//  Copyright © 2019 user148840. All rights reserved.
//

#import "ViewController.h"
#include "NSobject.h"
#include "CustCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // creating search controller
    self.searchController = [[UISearchController alloc] initWithSearchResultsController:nil];
    self.searchController.searchResultsUpdater = self;
    self.searchController.dimsBackgroundDuringPresentation = NO;
    self.searchController.searchBar.delegate = self;
    self.tableView.tableHeaderView = self.searchController.searchBar;
    self.definesPresentationContext = YES;
    [self.searchController.searchBar sizeToFit];
    [self.searchController.searchBar setScopeButtonTitles:@[@"Movie",@"Year"]];
    
    arrayAllData = [NSMutableArray new];
    
    [arrayAllData addObject:[[NSobject alloc] initWithName:@"André" identifier:@"0001" address:@"Street 1"]];
    [arrayAllData addObject:[[NSobject alloc] initWithName:@"Narlei" identifier:@"0002" address:@"Street 2"]];
    [arrayAllData addObject:[[NSobject alloc] initWithName:@"Nathan" identifier:@"0003" address:@"Street 3"]];
    [arrayAllData addObject:[[NSobject alloc] initWithName:@"Mathew" identifier:@"0004" address:@"Street 4"]];
    [arrayAllData addObject:[[NSobject alloc] initWithName:@"Marcos Alfred" identifier:@"0005" address:@"Street 5"]];
    
    arrayData = [[NSMutableArray alloc] initWithArray:arrayAllData];
  
}

#pragma TableView Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    

        return arrayData.count;
        
 
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *simpleTableIdentifier = @"cell";
    CustCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[CustCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
   
    NSobject *object = [arrayData objectAtIndex:indexPath.row];
    
    cell.lbl1.text=object.name;
    cell.lbl2.text=object.address;
    NSLog(@"search    %@",object.name);

    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80.2;
}

- (void)updateSearchResultsForSearchController:(UISearchController *)searchController
{
    NSString *searchString = searchController.searchBar.text;
    
    if (!searchString.length)
    {
        arrayData = [[NSMutableArray alloc] initWithArray:arrayAllData];
        
        [self.tableView reloadData];
        
        return;
    }
    
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"name contains[c] %@", searchString];
    
    arrayData = [[NSMutableArray alloc] initWithArray:[arrayAllData filteredArrayUsingPredicate:resultPredicate]];
    
    [self.tableView reloadData];
}
@end
