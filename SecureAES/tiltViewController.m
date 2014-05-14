//
//  tiltViewController.m
//  SecureAES
//
//  Created by Nikhil Chandran on 14/05/14.
//  Copyright (c) 2014 TILT LABS. All rights reserved.
//

#import "RNEncryptor.h"
#import "tiltViewController.h"
#import "NSData+CommonCrypto.h"

@interface tiltViewController ()
- (IBAction)testButton:(id)sender;

@end

@implementation tiltViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testButton:(id)sender {
    
    
    NSData *toencrypt = [@"0000022301234567" dataUsingEncoding:NSASCIIStringEncoding];
    
    NSData *pass = [@"WG4FP8QHR6WBMZHT" dataUsingEncoding:NSASCIIStringEncoding];
    
    NSData *iv = [@"AAAAAAAAAAAAAAAA" dataUsingEncoding:NSASCIIStringEncoding];
    
    CCCryptorStatus status = kCCSuccess;
    
    NSData *encrypted = [toencrypt dataEncryptedUsingAlgorithm:kCCAlgorithmAES128 key:pass initializationVector:iv options:0x0000 error:&status];
    
    
    //    NSString *text = [NSString base64StringFromData:encrypted length:[encrypted length]];
    
    NSLog(@"Output %@",encrypted);

}
- (IBAction)testButton2:(id)sender {


}
@end
