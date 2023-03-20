class ExtendedPDFConverter < (Asciidoctor::Converter.for 'pdf')
  register_for 'pdf'

  def ink_title_page doc
    move_cursor_to page_height * 0.75
    theme_font :title_page do
      doctitle = doc.doctitle partition: true
      theme_font :title_page_title do
        ink_prose doctitle.main, align: :center, margin: 0
      end
      if doctitle.subtitle?
        theme_font :title_page_subtitle do
          ink_prose doctitle.subtitle, align: :center, margin: 0
        end
      end
    end
  end
end
