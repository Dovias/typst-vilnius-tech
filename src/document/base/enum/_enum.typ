#let _enum(body) = {
  // Very big hack of enum numbering function to support list indentation after paragraphs or consecutive lists:
  // Ugly? Yes. Still better than MS Word's list indentation though :D
  set enum(
    full: true,
    numbering: (..rest) => {
      let numbers = rest.pos()
      let last = numbers.last()

      let prefix = if (last == 0) {
        last += 1
        "-"
      } else {
        numbers = numbers.map(number => if number == 0 { 1 } else { number })
        numbering("1.", ..numbers)
      }

      context {
        let here = here()
        let previous_paragraphs = query(selector(<paragraph>).before(here, inclusive: false))
        if (numbers.len() == 1 and last == 1 and previous_paragraphs.len() > 0) {
          layout(size => {
            let current_position = here.position()

            let last_paragraph = previous_paragraphs.last()

            let last_paragraph_position = last_paragraph.location().position()
            let last_paragraph_position_y_end = last_paragraph_position.y + measure(block(last_paragraph, width: size.width)).height + 1em.to-absolute()

            return if (
              current_position.page == last_paragraph_position.page and
              current_position.y    == last_paragraph_position_y_end
            ) { 
              pad(prefix, left: par.first-line-indent.amount)
            } else {
              prefix
            }
          })
        } else {
          prefix
        }
      }
    }
  )

  show enum: set par(justify: true)

  body
}