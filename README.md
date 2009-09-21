Original web site written by \_why was: http://shoooes.net/tutorial/
It's now gone. :(

![000.jpg](http://github.com/ashbb/shoes_tutorial_walkthrough/tree/master%2Fimgs%2F000.jpg?raw=true)

THE TUTORIAL WALKTHROUGH
========================

An introduction to SHOES. Code and graphical pairs.

Okay, so, a simple Shoes program.

![001.jpg](http://github.com/ashbb/shoes_tutorial_walkthrough/tree/master%2Fimgs%2F001.jpg?raw=true)

(And again, or in case you've just arrived: Shoes is a graphics toolkit for writing colorful apps using the Ruby programming language ? which is built into Shoes.)

	Shoes.app { button "Push me" }

You can just save the program in a file called little.rb and open it with Shoes.

The braces { and } are a kind of container. The button is "in" the app.

----------------------

![002.jpg](http://github.com/ashbb/shoes_tutorial_walkthrough/tree/master%2Fimgs%2F002.jpg?raw=true)

We can place a few buttons in a stack.

	Shoes.app {
	  stack {
	    button "A bed of clams"
	    button "A coalition of cheetahs"
	    button "A gulp of swallows"
	  }
	}

Stacks are essential! The most important two elements in Shoes are *stacks and flows*.

----------------------


![003.jpg](http://github.com/ashbb/shoes_tutorial_walkthrough/tree/master%2Fimgs%2F003.jpg?raw=true)

Okay, let's give the stack a bit of a margin. Scoot it out from the edge.

	Shoes.app {
	  background white
	  stack(:margin => 8) {
	    button "A bed of clams"
	    button "A coalition of cheetahs"
	    button "A gulp of swallows"
	  }
	}

Also painted the background white. Did you see that?

----------------------

![004.jpg](http://github.com/ashbb/shoes_tutorial_walkthrough/tree/master%2Fimgs%2F004.jpg?raw=true)

Time for something new. Artwork. Drawing.

	Shoes.app {
	  oval :left => 10, :top => 10,
	    :radius => 40
	}

The Shoes brush always starts out black.

Notice that while buttons just dropped into the window, we drew the circle at a specific place. At 10 pixels from the left edge of the window and 10 pixels below the top edge.

----------------------

![005.jpg](http://github.com/ashbb/shoes_tutorial_walkthrough/tree/master%2Fimgs%2F005.jpg?raw=true)

Now, a rectangle and an arrow.

	Shoes.app {
	  fill red
	  rect :left => 10, :top => 10,
	    :width => 40
	  arrow :left => 30, :top => 60,
	    :width => 40
	}


The fill is red on these shapes. And the stroke is black. (Because we didn't change it.) These two pens ? stroke and fill ? draw every shape.

----------------------

Of course, you can always design your app with images. Even images from the web!

	Shoes.app {
	  image "http://shoooes.net/images/nks-kidnap.png"
	}

![006.jpg](http://github.com/ashbb/shoes_tutorial_walkthrough/tree/master%2Fimgs%2F006.jpg?raw=true)

Shoes even caches images in memory and on disk, like browsers do. Images are loaded in background threads as well, to prevent apps from slowing down.

----------------------

Now, a very important element: the para. As in: paragraph. Probably the third most important element (after stacks and flows.)

	Shoes.app {
	  para strong("Q."), " Are you beginning to grasp hold of Shoes?"
	}

![007.jpg](http://github.com/ashbb/shoes_tutorial_walkthrough/tree/master%2Fimgs%2F007.jpg?raw=true)

----------------------

Beyond para, you've got title and subtitle, which are bigger fonts. You can add a bunch of font styles as well. Look for strong and em in this bit.


	Shoes.app {
	  stack(:margin => 6) {
	    title "A Question"
	    para strong("Q."), " Are you beginning to grasp hold of Shoes?"
	    para em(strong("A."), " Quit pestering me, I'm hacking here.")
	  }
	}

![008.jpg](http://github.com/ashbb/shoes_tutorial_walkthrough/tree/master%2Fimgs%2F008.jpg?raw=true)

----------------------

![009.jpg](http://github.com/ashbb/shoes_tutorial_walkthrough/tree/master%2Fimgs%2F009.jpg?raw=true)

Keep track of stuff by naming them as variables.

	Shoes.app {
	  @push = button "Push me"
	  @note = para "Nothing pushed so far"
	}

----------------------

![010.jpg](http://github.com/ashbb/shoes_tutorial_walkthrough/tree/master%2Fimgs%2F010.jpg?raw=true)

You can then put the variables into action. When the button is clicked, the @node changes to the message shown in the picture.

	Shoes.app {
	  @push = button "Push me"
	  @note = para "Nothing pushed so far"
	
	  @push.click {
	    @note.replace "Aha! Click!"
	  }
	}

----------------------

![011.jpg](http://github.com/ashbb/shoes_tutorial_walkthrough/tree/master%2Fimgs%2F011.jpg?raw=true)

	Shoes.app {
	  para strong("Q."), " Are you beginning to grasp hold of Shoes?"
	}

See if you can figure out this one. How does the gradient work? How are the letters styled?

![012.jpg](http://github.com/ashbb/shoes_tutorial_walkthrough/tree/master%2Fimgs%2F012.jpg?raw=true)

	Shoes.app do
	  background "#F3F".."#F90"
	  title "Shoooes", :top => 60,
	    :align => "center",
	    :font => "Trebuchet MS",
	    :stroke => white
	end

In this example, I used do and end rather than the braces. Same meaning.

----------------------

![013.jpg](http://github.com/ashbb/shoes_tutorial_walkthrough/tree/master%2Fimgs%2F013.jpg?raw=true)

Aha, here's a flow. It keeps the text box and the button side-by-side.

	Shoes.app do
	  background "#EFC"
	  border "#BE8", :strokewidth => 6
	  stack(:margin => 12) do
	    para "Enter your name"
	    flow do
	      edit_line
	      button "OK"
	    end
	  end
	end

----------------------

![014.jpg](http://github.com/ashbb/shoes_tutorial_walkthrough/tree/master%2Fimgs%2F014.jpg?raw=true)

In this one, we make a five-point star. And it follows the mouse around as you move.

	Shoes.app do
	  @shape = star :points => 5
	  motion do |left, top|
	    @shape.move left, top
	  end
	end

----------------------

On to a taste of animation. The Shoes icon moves randomly a bunch of times each second.

	Shoes.app do
	  @shoes = image "http://shoooes.net/shoes.png",
	    :top => 100, :left => 100
	  animate do |i|
	    @shoes.top += (-20..20).rand
	    @shoes.left += (-20..20).rand
	  end
	end


![015.jpg](http://github.com/ashbb/shoes_tutorial_walkthrough/tree/master%2Fimgs%2F015.jpg?raw=true)

----------------------

![016.jpg](http://github.com/ashbb/shoes_tutorial_walkthrough/tree/master%2Fimgs%2F016.jpg?raw=true)

Remember a few examples ago when we handled a button click? How about doing the same with a link?

	Shoes.app {
	  @poem = stack {
	    para " 
	My eyes have blinked again
	And I have just realized
	This upright world 
	I have been in.
	
	My eyelids wipe
	My eyes hundreds of times
	Reseting and renovating
	The scenery."
	  }
	
	  para(link("Clear").
	    click { @poem.clear })
	}

So, when the link gets clicked, the stack gets emptied. The poem will disappear.

----------------------

![016.jpg](http://github.com/ashbb/shoes_tutorial_walkthrough/tree/master%2Fimgs%2F016.jpg?raw=true)

Okay, last one for now. Let's generate a hundred random circles. This example also uses the rgb method to make colors from red, green and blue fractions.

	Shoes.app(:width => 300,
	  :height => 400) {
	  fill rgb(0, 0.6, 0.9, 0.1)
	  stroke rgb(0, 0.6, 0.9)
	  strokewidth 0.25
	  100.times {
	    oval :left => (-5..self.width).rand,
	      :top => (-5..self.height).rand,
	      :radius => (25..50).rand
	  }
	}

Okay, last one for now. Let's generate a hundred random circles. This example also uses the rgb method to make colors from red, green and blue fractions.

----------------------

![017.jpg](http://github.com/ashbb/shoes_tutorial_walkthrough/tree/master%2Fimgs%2F017.jpg?raw=true)

Ready for more? See the manuals page for a pair of longer instructions. Particularly the guide book Nobody Knows Shoes, which teaches the ten essential commands to get going with Shoes.

