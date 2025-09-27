#let list(body) = {
  // Hack of enum numbering function to support list indentation after paragraphs or consecutive lists:
  set enum(
    full: true,
    numbering: (..rest) => {
      let numbers = rest.pos()
      let last = numbers.last()

      let prefix = if (last == 0) {
        "• "
      } else {
        numbers = numbers.map(number => if number == 0 { 1 } else { number })
        numbering("1.", ..numbers)
      }

      context {
        let here = here()
        let previous_paragraphs = query(selector(<paragraph>).before(here, inclusive: false))
        if (numbers.len() == 1 and previous_paragraphs.len() > 0 and previous_paragraphs.last().location().position() == here.position()) {
          pad(prefix, left: par.first-line-indent.amount * 1.6)
        } else {
          prefix
        }
      }
    }
  )

  show enum: set par(justify: true)
  
  show std.list: it => {
    // Simulate lists under enums because list
    // marker function is lacking information for
    // hierarchical indentation support:
    for child in it.children {
      enum.item(0, child.body)
    }
  }

  body
}