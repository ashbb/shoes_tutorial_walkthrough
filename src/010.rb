Shoes.app {
  @push = button "Push me"
  @note = para "Nothing pushed so far"

  @push.click {
    @note.replace "Aha! Click!"
  }
}