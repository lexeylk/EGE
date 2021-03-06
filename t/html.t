use strict;
use warnings;
use utf8;

use Test::More tests => 7;

use lib '..';

use EGE::Html;

is html->tag('a', 'b'), '<a>b</a>', 'simple tag';
is html->tag('br'), '<br/>', 'empty tag';
is html->tag('div', 'body', { color => 'red' }), '<div color="red">body</div>', 'simple attr';
is html->tag('div', 'body', { width => '1%', height => '2%' }),
    '<div height="2%" width="1%">body</div>', 'multi attr';
is html->tag('hr', undef, { width => '1px' }), '<hr width="1px"/>', 'empty tag attr';
is html->row('td', 1, 2, 3), '<tr><td>1</td><td>2</td><td>3</td></tr>', 'row';
is html->style(font => 'Arial', color => 'black'), 'color: black; font: Arial;', 'style';

