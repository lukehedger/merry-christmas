ractive = require "ractive"
require "ractive-transitions-fly"

class App

	constructor: ->

		console.log 'Ho ho ho! *<:)'

		@_setupView()

	_setupView: ->

		@content = new Ractive
			el: ".content"
			template: require "../template/content.html"
			data:
				views: ["start", "test"]
				current: "start"

		@content.on "switchView", (e) => @content.set "current", e.context


new App()
