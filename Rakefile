require 'spec/rake/spectask'

desc 'Default: run specs'
task :default => :spec
Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList["spec/**/*_spec.rb"]
end

Spec::Rake::SpecTask.new('rcov') do |t|
  t.spec_files = FileList["spec/**/*_spec.rb"]
  t.rcov = true
  t.rcov_opts = ['--exclude', 'spec']
end
