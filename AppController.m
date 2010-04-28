//
//  UAGithubEngineAppDelegate.m
//  UAGithubEngine
//
//  Created by Owain Hunt on 02/04/2010.
//  Copyright 2010 Owain R Hunt. All rights reserved.
//

#import "AppController.h"

@implementation AppController

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification 
{
	githubEngine = [[UAGithubEngine alloc] initWithUsername:@"owainhunt" apiKey:@"cb67aaa5fe26f4a0509b5a04d8a4a19b" delegate:self];
	
	//[githubEngine getUser:@"owainhunt"];
	//[githubEngine getRepositoriesForUser:@"owainhunt" includeWatched:NO];
	//[githubEngine getRepository:@"owainhunt/uagithubengine"];
	//[githubEngine getCommitsForBranch:@"owainhunt/uagithubengine/master"];
	//[githubEngine getCommit:@"owainhunt/uagithubengine/251c735cdd8285c63fc952bd58e5f48e22a26e6b"];
	//[githubEngine getIssuesForRepository:@"owainhunt/uagithubengine" withRequestType:UAGithubOpenIssuesRequest];
	//[githubEngine getIssue:@"owainhunt/uagithubengine/1"];
	//[githubEngine editIssue:@"owainhunt/uagithubengine/1" withDictionary:[NSDictionary dictionaryWithObjectsAndKeys:@"Test Issue [edited]", @"title", @"Test body [edited]", @"body", nil]];
	//[githubEngine addIssueForRepository:@"owainhunt/UAGithubEngine" withDictionary:[NSDictionary dictionaryWithObjectsAndKeys:@"Test issue", @"title", @"Test body", @"body", nil]];
	//[githubEngine closeIssue:@"owainhunt/uagithubengine/1"];
	//[githubEngine reopenIssue:@"owainhunt/uagithubengine/1"];
	//[githubEngine getLabelsForRepository:@"owainhunt/uagithubengine"];
	//[githubEngine addLabel:@"Major Bug" toRepository:@"owainhunt/uagithubengine"];
	//[githubEngine removeLabel:@"Feature Request" fromRepository:@"owainhunt/uagithubengine"];
	//[githubEngine addLabel:@"Feature Request" toIssue:1 inRepository:@"owainhunt/uagithubengine"];
	//[githubEngine removeLabel:@"Bug" fromIssue:1 inRepository:@"owainhunt/uagithubengine"];
	//[githubEngine getCommentsForIssue:@"owainhunt/uagithubengine/1"];
	//[githubEngine addComment:@"This thing is awesome." toIssue:@"owainhunt/uagithubengine/1"];


}

- (void)dealloc
{
	[githubEngine release];
	[super dealloc];
	
}


#pragma mark UAGithubEngineDelegate Methods

- (void)requestSucceeded:(NSString *)connectionIdentifier
{
	NSLog(@"Request succeeded: %@", connectionIdentifier);

}


- (void)requestFailed:(NSString *)connectionIdentifier withError:(NSError *)error
{
    NSLog(@"Request failed: %@, error: %@ (%@)", connectionIdentifier, [error localizedDescription], [error userInfo]);
	
}


- (void)repositoriesReceived:(NSArray *)repositories forConnection:(NSString *)connectionIdentifier
{
	NSLog(@"Received repositories for connection: %@, %@", connectionIdentifier, repositories);

}


- (void)issuesReceived:(NSArray *)issues forConnection:(NSString *)connectionIdentifier
{
	NSLog(@"Received issues for connection: %@, %@", connectionIdentifier, issues);

}


- (void)issueCommentsReceived:(NSArray *)issueComments forConnection:(NSString *)connectionIdentifier
{
	NSLog(@"Received issueComments for connection: %@, %@", connectionIdentifier, issueComments);

	
}


- (void)labelsReceived:(NSArray *)labels forConnection:(NSString *)connectionIdentifier
{
	NSLog(@"Received labels for connection: %@, %@", connectionIdentifier, labels);

}


- (void)usersReceived:(NSArray *)users forConnection:(NSString *)connectionIdentifier
{
	NSLog(@"Received users for connection: %@, %@", connectionIdentifier, users);

	
}


- (void)commitsReceived:(NSArray *)commits forConnection:(NSString *)connectionIdentifier
{
	NSLog(@"Received commits for connection: %@, %@", connectionIdentifier, commits);

	
}


@end
