
//
//  DemoCell.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import "DemoCell.h"

/*! ---------------------- Tool       ---------------------- !*/
/*! ---------------------- Tool       ---------------------- !*/

/*! ---------------------- Model      ---------------------- !*/
#import "DemoModel.h"           //  DemoModel
/*! ---------------------- Model      ---------------------- !*/

/*! ---------------------- View       ---------------------- !*/
/*! ---------------------- View       ---------------------- !*/

@interface DemoCell ()

#pragma mark - UI   Propertys
/*! ---------------------- UI   Property  ---------------------- !*/
/*! ---------------------- UI   Property  ---------------------- !*/

#pragma mark - Data Propertys
/*! ---------------------- Data Property  ---------------------- !*/
/*! ---------------------- Data Property  ---------------------- !*/

@end

@implementation DemoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


/**!
 *  @author swp_song
 *
 *  @brief  initWithStyle:reuseIdentifier:  ( Override Init )
 *
 *  @param  style           style
 *
 *  @param  reuseIdentifier reuseIdentifier
 *
 *  @return DemoCell
 */
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle      = UITableViewCellSelectionStyleNone;
        self.textLabel.textColor = [UIColor blackColor];
        self.textLabel.font      = [UIFont systemFontOfSize:12];
    }
    return self;
}

/**!
 *  @author swp_song
 *
 *  @brief  drawRect:  ( Override drawRect )
 *
 *  @param  rect    rect
 */
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];

    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextFillRect(context, rect);
    CGContextSetStrokeColorWithColor(context, [UIColor colorWithRed:0xE2 / 255.0f green:0xE2 / 255.0f blue:0xE2 / 255.0f alpha:1].CGColor);
    CGContextStrokeRect(context, CGRectMake(0, rect.size.height - 1, rect.size.width, 1));
}

/**!
 *  @author swp_song
 *
 *  @brief  setData:    ( 设置数据 )
 *
 *  @param  demo    demo
 */
- (void)setData:(DemoModel *)demo {
    self.textLabel.text = demo.title;
}

#pragma mark - Public Methods
/**!
 *  @author swp_song
 *
 *  @brief  demoCellWihtTableView:forCellReuseIdentifier:   ( 快速初始化一个 Cell )
 *
 *  @param  tableView   tableView
 *
 *  @param  identifier  identifier
 *
 *  @return UITableViewCell
 */
+ (instancetype)demoCellWihtTableView:(UITableView *)tableView forCellReuseIdentifier:(NSString *)identifier {
    return [tableView dequeueReusableCellWithIdentifier:identifier];
}

/**!
 *  @author swp_song
 *
 *  @brief  demoCellInit    ( 快速初始化一个 Cell )
 */
+ (__kindof DemoCell * _Nonnull (^)(UITableView * _Nonnull, NSString * _Nonnull))demoCellInit {
    return ^(UITableView *tableView, NSString *identifier){
        return [[self class] demoCellWihtTableView:tableView forCellReuseIdentifier:identifier];
    };
}

/**!
 *  @author swp_song
 *
 *  @brief  demo    ( 设置数据 )
 */
- (DemoCell * _Nonnull (^)(DemoModel * _Nonnull))demo {
    return ^(DemoModel *demo) {
        if (!demo) return self;
        [self setData:demo];
        return self;
    };
}

@end
