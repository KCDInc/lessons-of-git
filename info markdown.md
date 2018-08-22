Configuration 
By default, Markdown produces XHTML output for tags with empty elements. E.g.:
<br />
Markdown can be configured to produce HTML-style tags; e.g.:
<br>
Movable Type
You need to use a special MTMarkdownOptions container tag in each Movable Type template where you want HTML 4-style output:
<MTMarkdownOptions output='html4'>
    ... put your entry content here ...
</MTMarkdownOptions>
The easiest way to use MTMarkdownOptions is probably to put the opening tag right after your <body> tag, and the closing tag right before </body>.
To suppress Markdown processing in a particular template, i.e. to publish the raw Markdown-formatted text without translation into (X)HTML, set the output attribute to ‘raw’:
<MTMarkdownOptions output='raw'>
    ... put your entry content here ...
</MTMarkdownOptions>
Command-Line
Use the --html4tags command-line switch to produce HTML output from a Unix-style command line. E.g.:
% perl Markdown.pl --html4tags foo.text
Type perldoc Markdown.pl, or read the POD documentation within the Markdown.pl source code for more information.

# Markdown syntaxes

| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |

Markdown | Less | Pretty
--- | --- | ---
*Still* | `renders` | **nicely**
1 | 2 | 3

<dl>
  <dt>Definition list</dt>
  <dd>Is something people use sometimes.</dd>

  <dt>Markdown in HTML</dt>
  <dd>Does *not* work **very** well. Use HTML <em>tags</em>.</dd>
</dl>