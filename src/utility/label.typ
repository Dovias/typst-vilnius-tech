#import "predicate.typ": string

#let optional(label, value, predicate: string, element: std.label) = if predicate(label) [#value #element(label)] else [#value]