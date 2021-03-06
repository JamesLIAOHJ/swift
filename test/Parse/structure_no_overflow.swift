// RUN: %target-swift-frontend -parse %s 2>&1 | %FileCheck -allow-empty %s

// Test that we can have the allowed # of parens.
// CHECK-NOT: error
let a = (((((((((((((((((((((((((((((((( ((((((((((((((((((((((((((((((((
        (((((((((((((((((((((((((((((((( ((((((((((((((((((((((((((((((((
        (((((((((((((((((((((((((((((((( ((((((((((((((((((((((((((((((((
        (((((((((((((((((((((((((((((((( ((((((((((((((((((((((((((((((
        1
          )))))))))))))))))))))))))))))) ))))))))))))))))))))))))))))))))
        )))))))))))))))))))))))))))))))) ))))))))))))))))))))))))))))))))
        )))))))))))))))))))))))))))))))) ))))))))))))))))))))))))))))))))
        )))))))))))))))))))))))))))))))) ))))))))))))))))))))))))))))))))

// Test that we can have the allowed # of curly braces.
/// CHECK-NOT: error
let b = {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{ {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{
        {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{ {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{
        {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{ {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{
        {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{ {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{
        1
          }}}}}}}}}}}}}}}}}}}}}}}}}}}}}} }}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
        }}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}} }}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
        }}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}} }}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
        }}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}} }}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}

// Test that we can have the allowed # of mixed brackets.
// CHECK-NOT: error
let c = ({({({({ ({({({([ ({({({({ ({({({([  ({({({({ ({({({([ ({({({({ ({({({({
        ({({({({ ({({({([ ({({({({ ({({({([  ({({({({ ({({({([ ({({({({ ({({({({
        ({({({({ ({({({([ ({({({({ ({({({([  ({({({({ ({({({([ ({({({({ ({({({({
        ({({({({ ({({({([ ({({({({ ({({({([  ({({({({ ({({({([ ({({({({ ({({({
        1
          })})}) })})})}) ])})})}) })})})})  ])})})}) })})})}) ])})})}) })})})}) 
        })})})}) })})})}) ])})})}) })})})})  ])})})}) })})})}) ])})})}) })})})}) 
        })})})}) })})})}) ])})})}) })})})})  ])})})}) })})})}) ])})})}) })})})}) 
        })})})}) })})})}) ])})})}) })})})})  ])})})}) })})})}) ])})})}) })})})}) 
