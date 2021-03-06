namespace :thinking_sphinx do
  namespace :index do
    desc "Index Thinking Sphinx datetime delta indices"
    task :delta => :environment do
      ThinkingSphinx::Deltas::DatetimeDelta.index
    end
  end
end

namespace :ts do
  namespace :in do
    desc "Index Thinking Sphinx datetime delta indices"
    task :delta => "thinking_sphinx:index:delta"
  end
end
