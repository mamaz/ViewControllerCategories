ViewControllerCategories
========================

This is a simple implementation of UIViewController categories to handle additional methods or handle delegates.
The purpose of this categories are to separate methods and delegate methods from the view controller, to make code to be cleaner and increase readability.

instead of this:

	@implementation TSTViewController
    @synthesize helloString = _helloString;

	- (void)viewDidLoad
	{
	    [super viewDidLoad];
	    
	    // this will print string declared in categories
	    _helloString = @"Hello string";
	    [self printString:@"Hello..."];
	    
	    self.table = [[UITableView alloc]init];
	    self.table.frame = CGRectOffset(self.view.frame, 0, 20);
	    self.table.delegate   = self; // delegate and datasource is placed in categories
	    self.table.dataSource = self;
	    [self.view addSubview:self.table];
	}

	-(void)printString:(NSString*)string
	{
	    NSLog(@"Hai.. Hai..");
	    NSLog(@"%@", self.helloString);
	}

	-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
	{
	    return 1;
	}

	-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
	{
	    return 5;
	}

	-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
	{
	    static NSString *identifier = @"Cell";
	    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
	    
	    if (cell == nil) {
	        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
	                                     reuseIdentifier:identifier];
	    }
	    
	    cell.textLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row];
	    
	    return cell;
	}

	@end


separate the UITableView delegate methods to a [category](https://github.com/mamaz/ViewControllerCategories/blob/master/ViewControllerCategories/TSTViewController%2BTSTViewCategories.m), so the view controller becomes thin:

	@implementation TSTViewController
	@synthesize helloString = _helloString;

	- (void)viewDidLoad
	{
	    [super viewDidLoad];
	    
	    // this will print string declared in categories
	    _helloString = @"Hello string";
	    [self printString:@"Hello..."];
	    
	    self.table = [[UITableView alloc]init];
	    self.table.frame = CGRectOffset(self.view.frame, 0, 20);
	    self.table.delegate   = self; // delegate and datasource is placed in categories
	    self.table.dataSource = self;
	    [self.view addSubview:self.table];
	}

	- (void)didReceiveMemoryWarning
	{
	    [super didReceiveMemoryWarning];
	    // Dispose of any resources that can be recreated.
	}

	@end
