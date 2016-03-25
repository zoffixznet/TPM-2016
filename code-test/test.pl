$self->plugin('AssetPack');

$self->asset(
    'app.js' => qw{
        https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js
        /js/foo.js
        /js/baz.coffee
        /js/many-files/*
    },
);

# In your template:
% asset 'app.js'

# Which turns into something like
<script src="/packed/app-92bc075894ba75d5e33cf9e7d1f7f3ad.min.js"></script>