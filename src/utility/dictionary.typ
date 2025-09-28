#import "predicate.typ": positive, boolean

#let get(key, from: (:), default: none, predicate: positive) = {
  let value = from.at(key, default: default)
  if predicate(value) == false {
    value = default
  }

  return value
}

#let enabled(key: "enabled", from: (), default: true, predicate: boolean) = get(key, from: from, default: default, predicate: predicate) == true

#let extract(key, new: none, from: (:), to: (:), default: none, predicate: positive) = {
  let value = from.at(key, default: default)
  if (value != default) {
    if (new != none) {
      key = new
    }
    
    if predicate(value){
      to.insert(key, value)
    }
  }
  
  return to
}

 