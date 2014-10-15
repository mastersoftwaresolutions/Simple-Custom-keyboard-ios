//
//  KeyboardViewController.m
//  simpleKeyboard
//
//  Created by Gaganpreet Singh on 10/14/14.
//  Copyright (c) 2014 MSS. All rights reserved.
//

#import "KeyboardViewController.h"

@interface KeyboardViewController ()
@property (nonatomic, strong) UIButton *nextKeyboardButton;
@end

@implementation KeyboardViewController

- (void)updateViewConstraints {
    [super updateViewConstraints];
    
    // Add custom view sizing constraints here
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Perform custom UI setup here
    self.view.backgroundColor=[UIColor blackColor];
    
    UIButton *button1=[[UIButton alloc] initWithFrame:CGRectMake(10, 60, 100, 100)];
    button1.backgroundColor=[UIColor clearColor];
    [button1 setTitle:@"J" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor grayColor] forState:UIControlStateSelected];
    button1.layer.cornerRadius=10;
    button1.layer.borderWidth=2;
    button1.tag=1111;
    [button1 addTarget:self action:@selector(keyBoardButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    button1.layer.borderColor=[[UIColor lightGrayColor] CGColor];
    [self.view addSubview:button1];
    
    UIButton *button2=[[UIButton alloc] initWithFrame:CGRectMake(110, 60, 100, 100)];
    button2.backgroundColor=[UIColor clearColor];
    button2.tag=2222;
    [button2 setTitle:@"R" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor grayColor] forState:UIControlStateSelected];
    button2.layer.cornerRadius=10;
    button2.layer.borderWidth=2;
    [button2 addTarget:self action:@selector(keyBoardButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    button2.layer.borderColor=[[UIColor lightGrayColor] CGColor];
    [self.view addSubview:button2];
    
    UIButton *button3=[[UIButton alloc] initWithFrame:CGRectMake(210, 60, 100, 100)];
    button3.tag=3333;
    button3.backgroundColor=[UIColor clearColor];
    [button3 setTitle:@"K" forState:UIControlStateNormal];
    [button3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button3 setTitleColor:[UIColor grayColor] forState:UIControlStateSelected];
    button3.layer.cornerRadius=10;
    button3.layer.borderWidth=2;
    [button3 addTarget:self action:@selector(keyBoardButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    button3.layer.borderColor=[[UIColor lightGrayColor] CGColor];
    [self.view addSubview:button3];
    
    UIButton *button4=[[UIButton alloc] initWithFrame:CGRectMake(210, 60, 100, 100)];
    button4.tag=3333;
    button4.backgroundColor=[UIColor clearColor];
    [button4 setTitle:@"K" forState:UIControlStateNormal];
    [button4 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button4 setTitleColor:[UIColor grayColor] forState:UIControlStateSelected];
    button4.layer.cornerRadius=10;
    button4.layer.borderWidth=2;
    [button4 addTarget:self action:@selector(advanceToNextInputMode) forControlEvents:UIControlEventTouchUpInside];
    button4.layer.borderColor=[[UIColor lightGrayColor] CGColor];
    [self.view addSubview:button4];
    
}

-(void)keyBoardButtonClick:(UIButton *)sender
{
    if (sender.tag==1111) {
        [self.textDocumentProxy insertText:@"J"];
    }else if (sender.tag==2222)
    {
        [self.textDocumentProxy insertText:@"R"];
    }else if (sender.tag==3333)
    {
        [self.textDocumentProxy insertText:@"K"];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated
}

- (void)textWillChange:(id<UITextInput>)textInput {
    // The app is about to change the document's contents. Perform any preparation here.
}

- (void)textDidChange:(id<UITextInput>)textInput {
    // The app has just changed the document's contents, the document context has been updated.
    
    UIColor *textColor = nil;
    if (self.textDocumentProxy.keyboardAppearance == UIKeyboardAppearanceDark) {
        textColor = [UIColor whiteColor];
    } else {
        textColor = [UIColor blackColor];
    }
    [self.nextKeyboardButton setTitleColor:textColor forState:UIControlStateNormal];
}

@end
