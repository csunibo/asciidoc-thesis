
# asciidoc-thesis

Un punto di partenza per la scrittura di una tesi in AsciiDocad aderente alle
[specifiche del DISI](https://github.com/csunibo/asciidoc-thesis/issues/2#issuecomment-1470158684).

> 🚸 **ATTENZIONE!!!**: Il progetto è al momento in fase di sviluppo.

## Prerequisiti

- [ruby](https://www.ruby-lang.org/en/) versione `v2.7` o superiore.
- [Asciidoctor PDF](https://docs.asciidoctor.org/pdf-converter/latest/install/)

Si consiglia l'installazione di un'estensione per il vostro code editor che supporti **asciidoc**.

## Come Iniziare?

Per compilare il file di esempio `tesi.adoc` utilizzare il comando:
```bash
asciidoctor-pdf --theme unibo.yml -a pdf-fontsdir=fonts tesi.adoc
```

## Personalizzazione

**Asciidoc** è il linguaggio che dovrai utilizzare, e puoi trovare qui la
[documentazione](https://docs.asciidoctor.org/asciidoc/latest/).\
**Asciidoctor PDF** è il software che produrrà il `.pdf`, e puoi trovare qui la
[documentazione](https://docs.asciidoctor.org/pdf-converter/latest/) per l'impaginazione.

> 🚸 *Fai attenzione a modificare il file `unibo.yml`; l'indentazione è importantissima (2 spazi).*

### Files

### Sezioni

### Decoratori

### Liste

### Immagini

### Tabelle

### Math Mode

### Grafici

### Syntax Highlighting

### Bibliografia

### Numeri di Pagina
La sezione `footer` nel file `unibo.yml` controlla i
[numeri di pagina](https://docs.asciidoctor.org/pdf-converter/latest/theme/page-numbers/)
che sono pre-impostati al centro. Per impostarli sul lato esterno
alla rilegatura, sostituisci tutta la sezione `footer` con questa:
``` yaml
footer:
  height: 100
  recto:
    right:
      content: "{page-number}"
  verso:
    left:
      content: "{page-number}"
```

## Risorse Esterne

Il font `Computer Modern` è rilasciato in licenza SIL Open Font License.
