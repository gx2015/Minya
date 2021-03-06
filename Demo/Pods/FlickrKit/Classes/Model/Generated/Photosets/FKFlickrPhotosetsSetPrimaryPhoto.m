//
//  FKFlickrPhotosetsSetPrimaryPhoto.m
//  FlickrKit
//
//  Generated by FKAPIBuilder.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPhotosetsSetPrimaryPhoto.h" 

@implementation FKFlickrPhotosetsSetPrimaryPhoto



- (BOOL) needsLogin {
    return YES;
}

- (BOOL) needsSigning {
    return YES;
}

- (FKPermission) requiredPerms {
    return 1;
}

- (NSString *) name {
    return @"flickr.photosets.setPrimaryPhoto";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.photoset_id) {
		valid = NO;
		[errorDescription appendString:@"'photoset_id', "];
	}
	if(!self.photo_id) {
		valid = NO;
		[errorDescription appendString:@"'photo_id', "];
	}

	if(error != NULL) {
		if(!valid) {	
			NSDictionary *userInfo = @{NSLocalizedDescriptionKey: errorDescription};
			*error = [NSError errorWithDomain:FKFlickrKitErrorDomain code:FKErrorInvalidArgs userInfo:userInfo];
		}
	}
    return valid;
}

- (NSDictionary *) args {
    NSMutableDictionary *args = [NSMutableDictionary dictionary];
	if(self.photoset_id) {
		[args setValue:self.photoset_id forKey:@"photoset_id"];
	}
	if(self.photo_id) {
		[args setValue:self.photo_id forKey:@"photo_id"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrPhotosetsSetPrimaryPhotoError_PhotosetNotFound:
			return @"Photoset not found";
		case FKFlickrPhotosetsSetPrimaryPhotoError_PhotoNotFound:
			return @"Photo not found";
		case FKFlickrPhotosetsSetPrimaryPhotoError_SSLIsRequired:
			return @"SSL is required";
		case FKFlickrPhotosetsSetPrimaryPhotoError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrPhotosetsSetPrimaryPhotoError_MissingSignature:
			return @"Missing signature";
		case FKFlickrPhotosetsSetPrimaryPhotoError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrPhotosetsSetPrimaryPhotoError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrPhotosetsSetPrimaryPhotoError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPhotosetsSetPrimaryPhotoError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPhotosetsSetPrimaryPhotoError_WriteOperationFailed:
			return @"Write operation failed";
		case FKFlickrPhotosetsSetPrimaryPhotoError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPhotosetsSetPrimaryPhotoError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPhotosetsSetPrimaryPhotoError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPhotosetsSetPrimaryPhotoError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPhotosetsSetPrimaryPhotoError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
