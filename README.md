HELLO!
======

This is a copy of the original web site written by [_why](http://en.wikipedia.org/wiki/Why_the_lucky_stiff).

It's now gone. :(

![000.jpg](https://github.com/spiralofhope/shoes_tutorial_walkthrough/raw/master/imgs/000.jpg)

In case you've just arrived: Shoes is a graphics toolkit for writing colorful apps using [the Ruby programming language](http://www.ruby-lang.org/en/).  Ruby is built into Shoes.

Shoes wants to fit in.  It will change the way it looks for each person's computer.  These screenshots were taken on my computer, but when you run them for yourself they will look just like your other programs.  Try it!

THE TUTORIAL WALKTHROUGH
========================

An introduction to Shoes. Code and graphical pairs.

Okay, so, a simple Shoes program.

![001.png](https://github.com/ashbb/shoes_tutorial_walkthrough/raw/master/imgs/001.png)

```ruby
Shoes.app { button "Push me" }
```

You can just save the program in a file called little.rb and open it with Shoes.

The braces `{` and `}` are a kind of container. The button is "in" the app.

----------------------

![002.png](https://github.com/spiralofhope/shoes_tutorial_walkthrough/raw/master/imgs/002.png)

We can place a few buttons in a *stack*.

```ruby
Shoes.app {
  stack {
    button "A bed of clams"
    button "A coalition of cheetahs"
    button "A gulp of swallows"
  }
}
```

Stacks are essential! The most important two elements in Shoes are *stacks* and *flows*.

----------------------


![003.png](https://github.com/spiralofhope/shoes_tutorial_walkthrough/raw/master/imgs/003.png)

Okay, let's give the stack a bit of a *margin*. Scoot it out from the edge.

```ruby
Shoes.app {
  background white
  stack(:margin => 8) {
    button "A bed of clams"
    button "A coalition of cheetahs"
    button "A gulp of swallows"
  }
}
```

We also painted the *background* white. Did you see that?

<!--
TODO:  Make the margin 50.  It has to be noticeable.
TODO:  Change the background to another more noticeable colour.  Re-screenshot.
-->

----------------------

![004.png](https://github.com/spiralofhope/shoes_tutorial_walkthrough/raw/master/imgs/004.png)

Time for something new, artwork!  Let's draw!

```ruby
Shoes.app {
  oval(
    :left => 10,
    :top => 10,
    :radius => 40
  )
}
```

The Shoes brush always starts out black.

Notice that while buttons just dropped into the window, we drew the circle at a specific place. At 10 pixels from the left edge of the window and 10 pixels below the top edge.

----------------------

![005.png](https://github.com/spiralofhope/shoes_tutorial_walkthrough/raw/master/imgs/005.png)

Now, a rectangle and an arrow.

```ruby
Shoes.app {
  fill red
  rect(
    :left => 10,
    :top => 10,
    :width => 40
  )
  arrow(
    :left => 30,
    :top => 60,
    :width => 40
  )
}
```

The *fill* is red on these shapes. And the *stroke* is black. (Because we didn't change it.) These two pens - stroke and fill - draw every shape.

Did you see how the arrow is a little overtop of the rectangle?

<!--
TODO:  Change the colour of the two shapes.  Then update the screenshot.
-->

----------------------

Of course, you can always design your app with an *image*. Even images from the web!

```ruby
Shoes.app {
  image "http://spiralofhope.com/i/ruby-shoes--nks-kidnap.png"
}
```
<!--
As of 2011-08-27, GitHub does not allow hotlinking.  If a Shoes program tries to use an image that is stored on a GitHub server, nothing will display.  This is why this example image must be hosted elsewhere.  The image will still be placed in the github repository and referred-to locally, so we don't ever lose it.

The remotely-hosted image was also edited to remove the toolbar.  It's been archived locally (nks-kidnap--modified.png) so it doesn't get lost.
-->

![Aaaa.  My sweet children, I have kidnapped you!  And brought you to my secret Shoes study class!!](https://github.com/spiralofhope/shoes_tutorial_walkthrough/raw/master/imgs/nks-kidnap.png)

Shoes even caches images in memory and on disk, like browsers do. Images are loaded in background threads as well, to prevent apps from slowing down.

----------------------

Now, a very important element: the *para*. As in: paragraph. Probably the third most important element (after stacks and flows.)

```ruby
Shoes.app {
  para strong("Q."), " Are you beginning to grasp hold of Shoes?"
}
```

![007.png](https://github.com/spiralofhope/shoes_tutorial_walkthrough/raw/master/imgs/007.png)

----------------------

Beyond para, you've got *title* and *subtitle*, which are bigger fonts. You can add a bunch of font styles as well. Look for *strong* and *em* in this bit.

```ruby
Shoes.app {
  stack(:margin => 6) {
    title "A Question"
    para strong("Q."), " Are you beginning to grasp hold of Shoes?"
    para em(strong("A."), " Quit pestering me, I'm hacking here.")
  }
}
```

![008.png](https://github.com/spiralofhope/shoes_tutorial_walkthrough/raw/master/imgs/008.png)

----------------------

![009.png](https://github.com/spiralofhope/shoes_tutorial_walkthrough/raw/master/imgs/009.png)

Keep track of stuff by naming them as variables.

```ruby
Shoes.app {
  @push = button "Push me"
  @note = para "Nothing pushed so far"
}
```

----------------------

![010.png](https://github.com/spiralofhope/shoes_tutorial_walkthrough/raw/master/imgs/010.png)

You can then put the variables into action. When the button is clicked, the `@note` changes to the message shown in the picture.

```ruby
Shoes.app {
  @push = button "Push me"
  @note = para "Nothing pushed so far"
  @push.click {
    @note.replace "Aha! Click!"
  }
}
```

----------------------

![011.png](https://github.com/spiralofhope/shoes_tutorial_walkthrough/raw/master/imgs/011.png)

See if you can figure out this one. How does the gradient work? How are the letters styled?

```ruby
Shoes.app do
  background "#F3F".."#F90"
  title(
    "Shoooes",
    :top => 60,
    :align => "center",
    :font => "Trebuchet MS",
    :stroke => white
  )
end
```

In this example, I used *do* and end *rather* than the braces `{` and `}`. They have the same meaning.

----------------------

![012.png](https://github.com/spiralofhope/shoes_tutorial_walkthrough/raw/master/imgs/012.png)

Aha, here's a flow. It keeps the text box and the button side-by-side.

```ruby
Shoes.app do
  background "#EFC"
  border(
    "#BE8",
    :strokewidth => 6
  )
  stack(:margin => 12) do
    para "Enter your name"
    flow do
      edit_line
      button "OK"
    end
  end
end
```

----------------------

![013.png](https://github.com/spiralofhope/shoes_tutorial_walkthrough/raw/master/imgs/013.png)

In this one, we make a five-point star. And it follows the mouse around as you move.

```ruby
Shoes.app do
  @shape = star(:points => 5)
  motion do |left, top|
    @shape.move left, top
  end
end
```

----------------------

On to a taste of animation. The Shoes icon moves randomly a bunch of times each second.

```ruby
Shoes.app do
  @shoes = image(
    "http://spiralofhope.com/i/ruby-shoes--shoes.png",
    :top => 100,
    :left => 100
  )
  animate do |i|
    @shoes.top += (-20..20).rand
    @shoes.left += (-20..20).rand
  end
end
```

![014.png](https://github.com/spiralofhope/shoes_tutorial_walkthrough/raw/master/imgs/014.png)

----------------------

![015.png](https://github.com/spiralofhope/shoes_tutorial_walkthrough/raw/master/imgs/015.png)
<!--
TODO:  Update this screenshot to remove the blank line at the top.
-->

Remember a few examples ago when we handled a button click? How about doing the same with a link?

```ruby
Shoes.app do
  @poem = stack do
    para "My eyes have blinked again
And I have just realized
This upright world 
I have been in.

My eyelids wipe
My eyes hundreds of times
Reseting and renovating
The scenery."
  end
  para(
    link("Clear").click do
      @poem.clear
    end
  )
end
```

So, when the link gets clicked, the stack gets cleared. The poem will disappear.

----------------------

![016.png](https://github.com/spiralofhope/shoes_tutorial_walkthrough/raw/master/imgs/016.png)

Okay, last one for now. Let's generate a hundred random circles. This example also uses the *rgb* method to make colors from red, green and blue fractions.

```ruby
Shoes.app(:width => 300, :height => 400) do
  fill rgb(0, 0.6, 0.9, 0.1)
  stroke rgb(0, 0.6, 0.9)
  strokewidth 0.25
  100.times do
    oval(
      :left => (-5..self.width).rand,
      :top => (-5..self.height).rand,
      :radius => (25..50).rand
    )
  end
end
```

Don't worry if you haven't picked up a whole lot reading through these. To get the hang of it, you'll need to alter these yourself. Try fiddling with the numbers and colors. Experiment, you know?

----------------------

![shoes.png](https://github.com/spiralofhope/shoes_tutorial_walkthrough/raw/master/imgs/shoes.png)

Ready for more? See the [manuals](http://shoesrb.com/manual/Hello.html) page for a pair of longer instructions. Particularly the guide book [Nobody Knows Shoes](http://cloud.github.com/downloads/shoes/shoes/nks.pdf), which teaches the ten essential commands to get going with Shoes.
<!--
The pdf should be hosted under direct control, probably shoesrb.com
-->


<!--
TODO:  If any one screenshot is updated, all screenshots must be updated.  =(
TODO:  Consider colour for colourblindness?  e.g. don't use red.
-->
