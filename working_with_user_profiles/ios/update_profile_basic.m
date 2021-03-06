NSDateComponents *dob = [[NSDateComponents alloc] init];
dob.day = 24;
dob.month = 5;
dob.year = 1992;
NSDate *d = [[NSCalendar currentCalendar] dateFromComponents:dob];
NSDictionary *profile = @{
    @"Name": @"Jack Montana",       // String
    @"Identity": @6541182,          // String or number
    @"Email": @"jack@gmail.com",    // Email address of the user
    @"Phone": @4155551234,          // Phone (exclude the country code)
    @"Gender": @"M",                // Can be either M or F
    @"Employed": @"Y",              // Can be either Y or N
    @"DOB": d,                      // Date of Birth. An NSDate object
    @"Age": @28,                    // Not required if DOB is set
    @"MSG-email": @NO,              // Disable email notifications
    @"MSG-push": @YES,              // Enable push notifications
    @"MSG-sms": @NO                 // Disable SMS notifications
};

[[CleverTap sharedInstance] profilePush:profile];