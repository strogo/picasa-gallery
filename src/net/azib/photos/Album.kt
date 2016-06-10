package net.azib.photos

import java.util.*

class Album : Entity() {
  var name: String? = null
  var author: String? = null
  var authorId: String? = null
  var isPublic: Boolean = false
  var size: Int = 0

  var photos: List<Photo> = ArrayList()
  var comments: List<Comment> = ArrayList()

  fun size() = size
}
