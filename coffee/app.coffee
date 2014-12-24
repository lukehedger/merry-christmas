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
				views: ["alice", "mum", "dad", "phil"]
				current: "start"

		@content.on "switchView", (e) =>
			@content.set "current", e.node.getAttribute("data-view")


new App()
