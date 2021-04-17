FROM perl:5.32-stretch
# COPY . /usr/src/circos
VOLUME /circosdata
WORKDIR /usr/src/circos
# CMD [ "perl", "./your-daemon-or-script.pl" ]
RUN buildDeps='git wget gcc g++ libc6-dev make zlib1g-dev libncurses-dev curl ca-certificates cpanminus libgd-gd2-perl python bedtools libgd-svg-perl libgd-tools libgd-dev vim' \
    && set -x \
    && apt update && apt install -y $buildDeps --no-install-recommends \
    && rm -rf /var/lib/apt/lists/* \
    && cpanm Clone Config::General Font::TTF::Font Math::Bezier Math::Round Math::VecStat Params::Validate Readonly Regexp::Common SVG Set::IntSpan Statistics::Basic Text::Format List::MoreUtils GD GD::Polyline \
    && wget http://circos.ca/distribution/circos-0.69-9.tgz \
    && wget http://circos.ca/distribution/circos-tools-0.23.tgz \
    && tar xfvz circos-0.69-9.tgz \
    && tar xfvz circos-tools-0.23.tgz
