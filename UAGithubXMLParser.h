//
//  UAGithubXMLParser.h
//  UAGithubEngine
//
//  Created by Owain Hunt on 05/04/2010.
//  Copyright 2010 Owain R Hunt. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "UAGithubParserDelegate.h"
#import "UAGithubEngineRequestTypes.h"


@interface UAGithubXMLParser : NSObject {
	id <UAGithubParserDelegate> delegate;
    NSString *connectionIdentifier;
    UAGithubRequestType requestType;
	UAGithubResponseType responseType;
    NSData *xml;
    NSMutableArray *parsedObjects;
    NSXMLParser *parser;
    __weak id currentNode;
	NSMutableDictionary *parentNode;
    NSString *lastOpenedElement;
	
	NSString *baseElement;
	NSArray *numberElements;
	NSArray *boolElements;
	NSArray *dateElements;
	NSArray *dictionaryElements;
	NSArray *arrayElements;
	__weak NSMutableArray *currentArray;
	
	NSString *currentArrayKey;

}

@property (nonatomic, retain) NSString *lastOpenedElement;

- (id)initWithXML:(NSData *)theXML delegate:(id)theDelegate connectionIdentifier:(NSString *)theIdentifier requestType:(UAGithubRequestType)reqType responseType:(UAGithubResponseType)respType;
@end