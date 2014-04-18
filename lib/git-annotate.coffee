GitAnnotateView = require './git-annotate-view'

module.exports =
  gitAnnotateView: null

  activate: (state) ->
    @gitAnnotateView = new GitAnnotateView(state.gitAnnotateViewState)

  deactivate: ->
    @gitAnnotateView.destroy()

  serialize: ->
    gitAnnotateViewState: @gitAnnotateView.serialize()
