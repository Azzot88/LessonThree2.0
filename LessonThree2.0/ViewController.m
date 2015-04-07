//
//  ViewController.m
//  LessonThree2.0
//
//  Created by Nikita Trifonov on 07.04.15.
//  Copyright (c) 2015 Nikita Trifonov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (nonatomic, strong) NSMutableArray * arrayBase;
@property (nonatomic, strong) NSArray * arrayNicknames;
@property (nonatomic, strong) NSArray * arrayRooms;
//@property (nonatomic, strong) NSArray * arrayBalances;
//Хотел сделать три ячейки - не хватило времени разобраться.


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
//<<<<<<< Updated upstream
//    NSString * stringPrices = @"325,1013,99";
//    NSString * stringValues = @"Тетрадь,Телевизор,Утюг";
//    
//    self.arrayPrices = [stringPrices componentsSeparatedByString:@","];
//    self.arrayValues = [stringValues componentsSeparatedByString:@","];
//    
//    
//    
//    
//    
//    self.arrayM = [NSMutableArray array];
//    
//    NSInteger i = 17;
//    
//    NSDictionary * dict = [[NSDictionary alloc] initWithObjectsAndKeys:
//                           @"string1", @"str1",
//                           @"string2", @"str2",
//                           @"string3", @"str3",
//                           @(i), @"int", nil];
//    
//    NSLog(@"dict %@", dict);
//=======
    NSString * stringNicknames = @"Mr. Smith,Mao Tse-Tung,Kazemir Malevich,Alex Pushkin,Kastro Fidel,Elon Musk";
    NSString * stringRooms = @"325,311,201,438,367,211";
  //  NSString * stringBalances = @"24,3,256,453,2301,14000260";
    
    self.arrayBase = [NSMutableArray array];
    
    self.arrayNicknames = [stringNicknames componentsSeparatedByString:@","];
    self.arrayRooms = [stringRooms componentsSeparatedByString:@","];
   // self.arrayBalances = [stringBalances componentsSeparatedByString:@","];
    
    
    for (int i = 0; i < self.arrayNicknames.count; i++) {
        
        NSDictionary * dict = [[NSDictionary alloc] initWithObjectsAndKeys:
                               [self.arrayNicknames objectAtIndex:i], @"name",
                               [self.arrayRooms objectAtIndex:i], @"room", nil];
//                               [self.arrayBalances objectAtIndex:i], @"balance",
        
        [self.arrayBase addObject:dict];
        
    }
    
    NSLog(@"self.arrayBase %@", self.arrayBase);
    
//    NSInteger i = 17;
    
//    NSDictionary * dict = [[NSDictionary alloc] initWithObjectsAndKeys:
//                           @"string1", @"str1",
//                           @"string2", @"str2",
//                           @"string3", @"str3",
//                           @(i), @"int", nil];
    
    
//>>>>>>> Stashed changes
    
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

    return self.arrayBase.count ;


}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//<<<<<<< Updated upstream
//=======
    
//    Player *player = (self.players)[indexPath.row];
//    
//    UILabel *nameLabel = (UILabel *)[cell viewWithTag:100];
//    nameLabel.text = player.name;
//    
//    UILabel *gameLabel = (UILabel *)[cell viewWithTag:101];
//    gameLabel.text = player.game;
//    
//    UIImageView *ratingImageView = (UIImageView *)[cell viewWithTag:102];
//    ratingImageView.image = [self imageForRating:player.rating];
    
    

    static NSString * simpleTableIdentifier = @"Cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }

//    cell.textLabel.text = [self.arrayValues objectAtIndex:indexPath.row];
//    cell.detailTextLabel.text = [self.arrayPrices objectAtIndex:indexPath.row];
//    return cell;
    
//}

    cell.textLabel.text = [[self.arrayBase objectAtIndex:indexPath.row]objectForKey:@"name"];
    cell.detailTextLabel.text = [[self.arrayBase objectAtIndex:indexPath.row]objectForKey:@"room"];
//    cell.detailTextLabel.text = [[self.arrayBase objectAtIndex:indexPath.row]objectForKey:@"balance"];
    
    return cell;
    
}
//- (UIImage *)imageForRating:(int)rating
//{
//    switch (rating) {
//        case 1: return [UIImage imageNamed:@"1StarSmall"];
//        case 2: return [UIImage imageNamed:@"2StarsSmall"];
//        case 3: return [UIImage imageNamed:@"3StarsSmall"];
//        case 4: return [UIImage imageNamed:@"4StarsSmall"];
//        case 5: return [UIImage imageNamed:@"5StarsSmall"];
//    }
//    return nil;
//}
//>>>>>>> Stashed changes

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}


@end
