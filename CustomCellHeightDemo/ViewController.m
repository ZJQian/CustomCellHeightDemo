//
//  ViewController.m
//  CustomCellHeightDemo
//
//  Created by ZJQ on 2017/1/22.
//  Copyright © 2017年 ZJQ. All rights reserved.
//

#import "ViewController.h"
#import "Define.h"
#import "CustomCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, copy)   NSArray *dataArray;

@end

@implementation ViewController

- (UITableView *)tableView{
    
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.tableView];
   
    self.dataArray = @[@"岐王宅里寻常见，崔九堂前几度闻。正是江南好风景，落花时节又逢君。",@"意在抒写边防将士之乡情。前二句写月下边塞的景色；三句写声音，闻见芦管悲声；四句写心中感受，芦笛能动征人回乡之望。全诗把景色、声音，感受融为一体，意境浑成。《唐诗纪事》说这首诗在当时便被度曲入画。仔细体味全诗意境，确也是谱歌作画的佳品",@"平凡的寺，平凡的钟，经过诗人艺术的再创造，就构成了一幅情味隽永幽静诱人的江南水乡的夜景图，成为流传古今的名作、名胜。此诗自从欧阳修说了“三更不是打钟时”之后，议论颇多。其实寒山寺夜半鸣钟却是事实，直到宋化仍然。宋人孙觌的《过枫桥寺》诗：“白首重来一梦中，青山不改旧时容。乌啼月落桥边寺，倚枕犹闻半夜钟。”即可为证。张继大概也以夜半鸣钟为异，故有“夜半钟声”一句。今人或以为“乌啼”乃寒山寺以西有“乌啼山”，非指“乌鸦啼叫。”“愁眠”乃寒山寺以南的“愁眠山”，非指“忧愁难眠”。殊不知“乌啼山”与“愁眠山”，却是因张继诗而得名。孙觌的“乌啼月落桥边寺”句中的“乌啼”，即是明显指“乌啼山”",@"江雨霏霏江草齐，六朝如梦鸟空啼。无情最是台城柳，依旧烟笼十里堤。",@"诗的首句写梦中重聚，难舍难离；二句写依旧当年环境，往日欢情；三句写明月有情，伊人无义；四句写落花有恨，慰藉无人。前二句是表明自己思念之深；后两句是埋怨伊人无情，鱼沉雁杳。以明月有情，寄希望于对方，含蓄深厚，曲折委婉，情真意真。",@"首句写所见（月落），所闻（乌啼），所感（霜满天）；二句描绘枫桥附近的景色和愁寂的心情；三、四句写客船卧听古刹钟声。平凡的桥，平凡的树，平凡的水，平凡的寺，平凡的钟，经过诗人艺术的再创造，就构成了一幅情味隽永幽静诱人的江南水乡的夜景图，成为流传古今的名作、名胜。此诗自从欧阳修说了“三更不是打钟时”之后，议论颇多。其实寒山寺夜半鸣钟却是事实，直到宋化仍然。宋人孙觌的《过枫桥寺》诗：“白首重来一梦中，青山不改旧时容。乌啼月落桥边寺，倚枕犹闻半夜钟。”即可为证。张继大概也以夜半鸣钟为异，故有“夜半钟声”一句。今人或以为“乌啼”乃寒山寺以西有“乌啼山”，非指“乌鸦啼叫。”“愁眠”乃寒山寺以南的“愁眠山”，非指“忧愁难眠”。殊不知“乌啼山”与“愁眠山”，却是因张继诗而得名。孙觌的“乌啼月落桥边寺”句中的“乌啼”，即是明显指“乌啼山”。"];
    
}

#pragma mark - UITableViewDelegate,UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellID = @"cell";
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[CustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    [cell configCellWithText:self.dataArray[indexPath.row] dateText:@"2017-01-22"];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    return [CustomCell cellHegith:self.dataArray[indexPath.row]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
