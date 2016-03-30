class STMT is export is repr('CPointer') { };
sub sqlite3_column_text(STMT, int32)
    returns Str
    is native('sqlite3', V0) { };