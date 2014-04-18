{View, Git} = require 'atom'

module.exports =
class GitAnnotateView extends View
  @content: ->
    @div class: 'git-annotate'

  initialize: (serializeState) ->
    atom.workspaceView.command "git-annotate:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    repo = atom.project.getRepo()
    if @hasParent()
      @detach()
    else
      console.log repo
      atom.workspaceView.find(".gutter").after(this)
      numbersLines = atom.workspaceView.find(".line-number").length

      for nun in [1..numbersLines]
        atom.workspaceView.find(".git-annotate").append('<div class="annotate">Yohan</div>')
      #atom.workspaceView.append(this)

  detach: ->
    atom.workspaceView.find(".git-annotate").empty()
    super
