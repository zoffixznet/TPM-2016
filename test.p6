my $s = Supply.interval(1).share;
$s.tap: { "first $_".say };
sleep 1.1;
$s.tap: { "second $_".say };
sleep 2;


=finish

my $supplier = Supplier.new;

$supplier.Supply              .tap(-> $v { say "Original: $v" });
$supplier.Supply.map(  * × 2 ).tap(-> $v { say "  Double: $v" });
$supplier.Supply.grep( * % 2 ).tap(-> $v { say "  Odd: $v"    });

$supplier.emit: $_ for ^3;
