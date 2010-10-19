CurrencyTextField
=================

A Rails 2.3.x plugin to cleanly output currencies in form fields.

Installation
============

    ./script/plugin install git://github.com/nfm/currency_text_field

Usage
=====

Configure the available currency formats in
`config/initializers/currency_text_field_initializer.rb`
(see Rails documentation for `number_to_currency` for available options):

        CurrencyTextField.format[:default] = { :precision => 2, :unit => '$' }
        CurrencyTextField.format[:pounds] = { :precision => 2, :unit => '&pound;' }

Then use `currency_text_field` in your form, with an optional `:format`
argument:

        - form_for @invoice do |f|
	  = f.currency_text_field :total, :format => :pounds

`format[:default]` will be used if you don't specify an explicit `:format`
argument.

Copyright (c) 2010 Nicholas Firth-McCoy, released under the MIT license
