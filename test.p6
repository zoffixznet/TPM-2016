use Inline::Perl5;
use Mojo::DOM:from<Perl5>;

my $dom = Mojo::DOM.new: '<p><b>This is awesome</b>, trust me</p>';

say $dom.at('b').all_text;
