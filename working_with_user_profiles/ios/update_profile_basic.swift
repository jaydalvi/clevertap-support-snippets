// each of the below mentioned fields are optional
// if set, these populate demographic information in the Dashboard
let dob = NSDateComponents()
dob.day = 24
dob.month = 5
dob.year = 1992
let d = NSCalendar.currentCalendar().dateFromComponents(dob)
let profile: Dictionary<String, AnyObject> = [
    "Name": "Jack Montana",       // String
    "Identity": 61026032,         // String or number
    "Email": "jack@gmail.com",    // Email address of the user
    "Phone": 4155551234,          // Phone (without the country code)
    "Gender": "M",                // Can be either M or F
    "Employed": "Y",              // Can be either Y or N
    "Education": "Graduate",      // Can be either School, College or Graduate
    "Married": "Y",               // Can be either Y or N
    "DOB": d!,                    // Date of Birth. An NSDate object
    "Age": 28,                    // Not required if DOB is set
    "Photo": "www.foobar.com/image.jpeg",   // URL to the image

// optional fields. controls whether the user will be sent email, push etc.
    "MSG-email": false,           // Disable email notifications
    "MSG-push": true,             // Enable push notifications
    "MSG-sms": false              // Disable SMS notifications
]

CleverTap.sharedInstance()?.profilePush(profile)
