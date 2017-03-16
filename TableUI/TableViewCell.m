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
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithFrame:frame reuseIdentifier:reuseIdentifier]) {
        // Initialization code
        self.name = [[UILabel alloc]init];
        self.name.textAlignment = UITextAlignmentLeft;
        self.name.font = [UIFont systemFontOfSize:14];
        self.subName = [[UILabel alloc]init];
        self.subName.textAlignment = UITextAlignmentLeft;
        self.subName.font = [UIFont systemFontOfSize:8];
        self.image = [[UIImageView alloc]init];
        [self.contentView addSubview:self.name];
        [self.contentView addSubview:self.subName];
        [self.contentView addSubview:self.image];
        
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    CGRect contentRect = self.contentView.bounds;
    CGFloat boundsX = contentRect.origin.x;
    CGRect frame;
    
    frame= CGRectMake(boundsX+20 ,0, 43, 43);
    self.image.frame = frame;
    
    frame= CGRectMake(boundsX+70 ,5, 200, 25);
    self.name.frame = frame;
    
    frame= CGRectMake(boundsX+70 ,30, 100, 15);
    self.subName.frame = frame;
}

-(void) dealloc{
    
    [super dealloc];
    [_name release];
    [_subName release];
    [_image release];
}
@end
