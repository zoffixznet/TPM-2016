for '/tmp/4GB-file.txt'.IO.words {
    .say;
    last if ++$ == 3;
}
say "Code took {now - INIT now} seconds to run";
