#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "demo_avatar" asset catalog image resource.
static NSString * const ACImageNameDemoAvatar AC_SWIFT_PRIVATE = @"demo_avatar";

#undef AC_SWIFT_PRIVATE
