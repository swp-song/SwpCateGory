
//
//  CityCell.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import "CityCell.h"

/*! ---------------------- Tool       ---------------------- !*/
#import <Masonry/Masonry.h>
#import "UIColor+SwpColor.h"
/*! ---------------------- Tool       ---------------------- !*/

/*! ---------------------- Model      ---------------------- !*/
#import "CityModel.h"
/*! ---------------------- Model      ---------------------- !*/

/*! ---------------------- View       ---------------------- !*/
/*! ---------------------- View       ---------------------- !*/


@interface CityCell ()

#pragma mark - UI   Propertys
/*! ---------------------- UI   Property  ---------------------- !*/
@property (nonatomic, strong) CALayer *lineLayer;
@property (nonatomic, strong) UIView  *lineView;
/*! ---------------------- UI   Property  ---------------------- !*/

#pragma mark - Data Propertys
/*! ---------------------- Data Property  ---------------------- !*/
@property (nonatomic, copy) NSIndexPath *indexPath_;
@property (nonatomic, strong) CityModel *city_;
/*! ---------------------- Data Property  ---------------------- !*/


@end

@implementation CityCell

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
        [self setUpUI];
        [self setUIAutoLayout];
    }
    return self;
}

/**!
 *  @author swp_song
 *
 *  @brief  setUpUI ( 添加控件 )
 */
- (void)setUpUI {
    
    [self.contentView addSubview:self.lineView];
}

/**!
 *  @author swp_song
 *
 *  @brief  setUIAutoLayout ( 设置控件的自动布局 )
 */
- (void)setUIAutoLayout {
    
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.right.equalTo(self.contentView).mas_offset(UIEdgeInsetsMake(0, 0, 0, 0));
        make.height.equalTo(@(1));
    }];
}



/**!
 *  @author swp_song
 *
 *  @brief  setData:    ( 设置数据 )
 *
 *  @param  city        city
 */
- (void)setData:(CityModel *)city {
    
    self.textLabel.text  = city.name;
    self.lineView.hidden = !city.mark;
}

#pragma mark - Public Methods
/**!
 *  @author swp_song
 *
 *  @brief  cityCellWihtTableView:forCellReuseIdentifier:   ( 快速初始化一个 Cell )
 *
 *  @param  tableView   tableView
 *
 *  @param  identifier  identifier
 *
 *  @return UITableViewCell
 */
+ (instancetype)cityCellWihtTableView:(UITableView *)tableView forCellReuseIdentifier:(NSString *)identifier {
    return [tableView dequeueReusableCellWithIdentifier:identifier];
}

/**!
 *  @author swp_song
 *
 *  @brief  cityCellInit    ( 快速初始化一个 Cell )
 */
+ (__kindof CityCell * _Nonnull (^)(UITableView * _Nonnull, NSString * _Nonnull))cityCellInit {
    return ^(UITableView *tableView, NSString *identifier){
        return [[self class] cityCellWihtTableView:tableView forCellReuseIdentifier:identifier];
    };
}


/**!
 *  @author swp_song
 *
 *  @brief  indexPath   ( cell indexPath )
 */
- (CityCell * _Nonnull (^)(NSIndexPath * _Nonnull))indexPath {
    
    return ^(NSIndexPath *indexPath) {
        self.indexPath_ = indexPath;
        return self;
    };
}

/**!
 *  @author swp_song
 *
 *  @brief  city    ( 设置数据 )
 */
- (CityCell * _Nonnull (^)(CityModel * _Nonnull))city {
    return ^(CityModel *city) {
        if (!city) return self;
        self.city_ = city;
        [self setData:self.city_];
        return self;
    };
}


- (UIView *)lineView {

    return !_lineView ? _lineView = ({
        UIView *view         = [UIView new];
        view.backgroundColor = [UIColor swpColorWithHexadecimal:0xC9C9C9];
        view;
    }) : _lineView;
}

@end
