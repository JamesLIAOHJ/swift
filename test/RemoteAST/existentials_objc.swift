// RUN: %target-swift-remoteast-test-with-sdk %s | %FileCheck %s

// REQUIRES: swift-remoteast-test
// REQUIRES: objc_interop
// REQUIRES: SR9908

import Foundation

@_silgen_name("printDynamicTypeAndAddressForExistential")
func printDynamicTypeAndAddressForExistential<T>(_: T)

// CHECK: NSObject
printDynamicTypeAndAddressForExistential(NSObject() as AnyObject)

// Print tagged pointer types three times to ensure the caching works.

// CHECK: NSNumber
printDynamicTypeAndAddressForExistential(NSNumber(123) as AnyObject)

// CHECK: NSNumber
printDynamicTypeAndAddressForExistential(NSNumber(123) as AnyObject)

// CHECK: NSNumber
printDynamicTypeAndAddressForExistential(NSNumber(123) as AnyObject)

// CHECK: NSString
printDynamicTypeAndAddressForExistential(NSString("hello") as AnyObject)

// CHECK: NSString
printDynamicTypeAndAddressForExistential(NSString("hello") as AnyObject)

// CHECK: NSString
printDynamicTypeAndAddressForExistential(NSString("hello") as AnyObject)
