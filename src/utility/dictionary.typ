#let extract(current, new: none, from: (:), to: (:), default: none) = {
  let value = from.at(current, default: default)
  if (value != default) {
    if (new != none) {
      current = new
    }
    
    to.insert(current, value)
  }
  
  return to
}
