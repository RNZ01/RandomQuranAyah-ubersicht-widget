
randomAyahNumber = Math.floor(Math.random() * (6327 - 1 + 1)) + 1

command: "curl -s https://api.alquran.cloud/ayah/#{randomAyahNumber}/en.asad"

refreshFrequency: 86400000

style: """
  bottom: 32px
  left: 40%

  .ayah
    color: #fff
    font-family: Helvetica Neue
    font-style: italic
    padding: 5px 10px
    width: 350px
    font-size: 14px

"""

render: (output) -> """
    <div class="ayah"></div>
"""

update: (output, domEl) ->
  $(domEl).find('.ayah').text JSON.parse(output).data.text
