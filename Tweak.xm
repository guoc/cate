#include <substrate.h>

%hook SBStatusBarStateAggregator

- (id)_sbCarrierNameForOperator:(id)anOperator {

	%orig;

	NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
	NSString *dateTemplate = @"Md";
	NSString* dateFormat = [NSDateFormatter dateFormatFromTemplate:dateTemplate options:nil locale:[NSLocale currentLocale]];
	dateFormatter.dateFormat = dateFormat;
	NSDate *now = [NSDate date];
	NSString *nowString = [dateFormatter stringFromDate:now];
	return nowString;
}

%end

