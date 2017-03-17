//
//  TableViewCell.m
//  TableUI
//
//  Created by Admin on 15.03.17.
//  Copyright (c) 2017 Admin. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier {
    
        self = [super initWithFrame:frame reuseIdentifier:reuseIdentifier];
        self.name = [[UILabel alloc]init];
        self.name.textAlignment = UITextAlignmentLeft;
        self.name.font = [UIFont systemFontOfSize:20];
        self.subName = [[UILabel alloc]init];
        self.subName.textAlignment = UITextAlignmentLeft;
        self.subName.font = [UIFont systemFontOfSize:10];
        self.image = [[UIImageView alloc]init];
        [self.contentView addSubview:self.name];
        [self.contentView addSubview:self.subName];
        [self.contentView addSubview:self.image];
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    
    
    CGRect contentRect = self.contentView.bounds;
    CGFloat boundsX = contentRect.origin.x;
    CGRect frame;
    
    frame= CGRectMake(boundsX+15 ,0, 44, 44);
    self.image.frame = frame;
    
    frame= CGRectMake(boundsX+70 ,5, 200, 25);
    self.name.frame = frame;
    
    frame= CGRectMake(boundsX+70 ,25, 100, 15);
    self.subName.frame = frame;
}

-(void) dealloc{
    
    [super dealloc];
    [_name release];
    [_subName release];
    [_image release];
}
@end
