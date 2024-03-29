FROM jekyll/jekyll

COPY --chown=jekyll:jekyll Gemfile .

RUN bundle install --quiet --clean

EXPOSE 4000/tcp
CMD ["jekyll", "serve"]
