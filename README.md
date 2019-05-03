# amb -- Amharic Bible on the Command Line

A command line tool for search and reading the Bible in Amharic.
Source [tokitaari/amb](https://github.com/tokitaari/amb).

Format and original implementation from [bontibon/kjv](https://github.com/bontibon/kjv). Forked from [lukesmithxyz/grb](https://github.com/lukesmithxyz/grb). Meant to be a companion program.

## Usage

    usage: ./amb [flags] [reference...]

      -l      list books
      -W      no line wrap
      -h      show help

      Reference types:
          <Book>
              Individual book
          <Book>:<Chapter>
              Individual chapter of a book
          <Book>:<Chapter>:<Verse>[,<Verse>]...
              Individual verse(s) of a specific chapter of a book
          <Book>:<Chapter>-<Chapter>
              Range of chapters in a book
          <Book>:<Chapter>:<Verse>-<Verse>
              Range of verses in a book chapter
          <Book>:<Chapter>:<Verse>-<Chapter>:<Verse>
              Range of chapters and verses in a book

          /<Search>
              All verses that match a pattern
          <Book>/<Search>
              All verses in a book that match a pattern
          <Book>:<Chapter>/<Search>
              All verses in a chapter of a book that match a pattern

## Notes and Contents

	- First try, please review 

## Install

Install `amb` by running:

```
git clone https://github.com/tokitaari/amb.git
cd amb
sudo make install
```

## License

The script is in the public domain.
The Holy Bible in Amharic from Wordproject has a permissive license for non-commercial uses. See it [here](https://www.wordproject.org/contact/new/disclaim.htm).
