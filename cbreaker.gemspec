lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cbreaker/version'

Gem::Specification.new do |spec|
  spec.name          = 'cbreaker'
  spec.version       = Cbreaker::VERSION
  spec.authors       = ['Anastasiia04']
  spec.email         = ['anastasiamoskalenko04@gmail.com']

  spec.summary       = 'This gem is designed for help to create a guessing game.'
  spec.homepage      = 'https://rubygems.org/gems/cbreaker'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
   # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

    #spec.metadata['homepage_uri'] = spec.homepage
    #spec.metadata['source_code_uri'] = 'https://rubygems.org/gems/cbreaker'
  #else
  #  raise 'RubyGems 2.0 or newer is required to protect against ' \
   #   'public gem pushes.'
  #end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
