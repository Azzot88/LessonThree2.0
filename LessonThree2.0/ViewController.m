//
//  ViewController.m
//  LessonThree2.0
//
//  Created by Nikita Trifonov on 07.04.15.
//  Copyright (c) 2015 Nikita Trifonov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray * arrayM;
@property (nonatomic, strong) NSArray * arrayPrices;
@property (nonatomic, strong) NSArray * arrayValues;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString * stringPrices = @"325,1013,99";
    NSString * stringValues = @"Тетрадь,Телевизор,Утюг";
    
    self.arrayPrices = [stringPrices componentsSeparatedByString:@","];
    self.arrayValues = [stringValues componentsSeparatedByString:@","];
    
    
    
    
    
    self.arrayM = [NSMutableArray array];
    
    NSInteger i = 17;
    
    NSDictionary * dict = [[NSDictionary alloc] initWithObjectsAndKeys:
                           @"string1", @"str1",
                           @"string2", @"str2",
                           @"string3", @"str3",
                           @(i), @"int", nil];
    
    NSLog(@"dict %@", dict);
    
}

- (void) testMethod {


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arrayPrices.count ;

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * simpleTableIdentifier = @"Cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    cell.textLabel.text = [self.arrayValues objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [self.arrayPrices objectAtIndex:indexPath.row];
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}


@end
