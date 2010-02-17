use strict;
use warnings;
use ExtUtils::MakeMaker;
use version;

WriteMakefile(
    NAME                => 'Test::Reporter::Transport::Net::SMTP::SSL',
    AUTHOR              => q{Theodore Robert Campbell Jr <trcjr@cpan.org>},
    VERSION_FROM        => 'lib/Test/Reporter/Transport/Net/SMTP/SSL.pm',
    ABSTRACT_FROM       => 'lib/Test/Reporter/Transport/Net/SMTP/SSL.pm',
    (version->parse($ExtUtils::MakeMaker::VERSION) >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Test-Reporter-Transport-Net-SMTP-SSL-*' },
);
