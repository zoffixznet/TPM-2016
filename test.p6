my $c = Channel.new;
start {
    loop { say "$c.receive() at {now - INIT now}" }
}
await ^10 .map: -> $r {
    start {
         sleep $r;
         $c.send: $r;
    }
}
$c.close;


=finish

my $supplier = Supplier.new;

$supplier.Supply              .tap(-> $v { say "Original: $v" });
$supplier.Supply.map(  * × 2 ).tap(-> $v { say "  Double: $v" });
$supplier.Supply.grep( * % 2 ).tap(-> $v { say "  Odd: $v"    });

$supplier.emit: $_ for ^3;
