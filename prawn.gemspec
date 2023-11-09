# frozen_string_literal: true

basedir = __dir__

require "#{basedir}/lib/prawn/version"

Gem::Specification.new do |spec|
  spec.name = 'prawn-continued'
  spec.version = Prawn::VERSION
  spec.platform = Gem::Platform::RUBY
  spec.summary = 'A fast and nimble PDF generator for Ruby'
  spec.files = Dir.glob('{examples,lib,spec,manual}/**/**/*') +
    Dir.glob('data/fonts/{MustRead.html,*.afm}') +
    [
      'Rakefile',
      'prawn.gemspec',
      'Gemfile',
      'LICENSE',
      'LICENSE-GPLv2',
      'LICENSE-GPLv3',
      'LICENSE-MIT',
      'LICENSE-PRAWN',
      '.yardopts'
    ]
  spec.require_path = 'lib'
  spec.required_ruby_version = '>= 2.6'
  spec.required_rubygems_version = '>= 1.3.6'
  spec.authors = [
    'Gregory Brown',
    'Brad Ediger',
    'Daniel Nelson',
    'Jonathan Greenberg',
    'James Healy'
  ]
  spec.email = [
    'gregory.t.brown@gmail.com',
    'brad@bradediger.com',
    'dnelson@bluejade.com',
    'greenberg@entryway.net',
    'jimmy@deefa.com'
  ]
  spec.licenses = %w[PRAWN GPL-2.0 GPL-3.0]

  spec.add_dependency('matrix', '~> 0.4')
  spec.add_dependency('pdf-core', '~> 0.9.0')
  spec.add_dependency('ttfunk', '~> 1.7')

  spec.add_development_dependency('pdf-inspector', '>= 1.2.1', '< 2.0.a')
  spec.add_development_dependency('pdf-reader', ['~> 1.4', '>= 1.4.1'])
  spec.add_development_dependency('prawn-dev', '~> 0.3.0')
  spec.add_development_dependency('prawn-manual_builder', '>= 0.3.0')

  spec.homepage = 'http://prawnpdf.org'
  spec.description = 'Prawn is a fast, tiny, and nimble PDF generator for Ruby'
end
