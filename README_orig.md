This is the copy of original web site written by **\_why**: http://shoooes.net/tutorial/

It's now gone. :(

![000.jpg](https://github.com/ashbb/shoes_tutorial_walkthrough/raw/master/imgs/000.jpg)

THE TUTORIAL WALKTHROUGH
========================

An introduction to SHOES. Code and graphical pairs.

Okay, so, a simple Shoes program.

![001.jpg](https://github.com/ashbb/shoes_tutorial_walkthrough/raw/master/imgs/001.jpg)

(And again, or in case you've just arrived: Shoes is a graphics toolkit for writing colorful apps using the Ruby programming language ? which is built into Shoes.)

	Shoes.app { button "Push me" }

You can just save the program in a file called little.rb and open it with Shoes.

The braces { and } are a kind of container. The button is "in" the app.

----------------------

![002.jpg](https://github.com/ashbb/shoes_tutorial_walkthrough/raw/master/imgs/002.jpg)

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


![003.jpg](https://github.com/ashbb/shoes_tutorial_walkthrough/raw/master/imgs/003.jpg)

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

![004.jpg](https://github.com/ashbb/shoes_tutorial_walkthrough/raw/master/imgs/004.jpg)

Time for something new. Artwork. Drawing.

	Shoes.app {
	  oval :left => 10, :top => 10,
	    :radius => 40
	}

The Shoes brush always starts out black.

Notice that while buttons just dropped into the window, we drew the circle at a specific place. At 10 pixels from the left edge of the window and 10 pixels below the top edge.

----------------------

![005.jpg](https://github.com/ashbb/shoes_tutorial_walkthrough/raw/master/imgs/005.jpg)

Now, a rectangle and an arrow.

	Shoes.app {
	  fill red
	  rect :left => 10, :top => 10,
	    :width => 40
	  arrow :left => 30, :top => 60,
	    :width => 40
	}


The fill is red on these shapes. And the stroke is black. (Because we didn't change it.) These two pens - stroke and fill - draw every shape.

----------------------

Of course, you can always design your app with images. Even images from the web!

	Shoes.app {
	  image "http://shoooes.net/images/nks-kidnap.png"
	}

![006.jpg](https://github.com/ashbb/shoes_tutorial_walkthrough/raw/master/imgs/006.jpg)

Shoes even caches images in memory and on disk, like browsers do. Images are loaded in background threads as well, to prevent apps from slowing down.

----------------------

Now, a very important element: the para. As in: paragraph. Probably the third most important element (after stacks and flows.)

	Shoes.app {
	  para strong("Q."), " Are you beginning to grasp hold of Shoes?"
	}

![007.jpg](https://github.com/ashbb/shoes_tutorial_walkthrough/raw/master/imgs/007.jpg)

----------------------

Beyond para, you've got title and subtitle, which are bigger fonts. You can add a bunch of font styles as well. Look for strong and em in this bit.


	Shoes.app {
	  stack(:margin => 6) {
	    title "A Question"
	    para strong("Q."), " Are you beginning to grasp hold of Shoes?"
	    para em(strong("A."), " Quit pestering me, I'm hacking here.")
	  }
	}

![008.jpg](https://github.com/ashbb/shoes_tutorial_walkthrough/raw/master/imgs/008.jpg)

----------------------

![009.jpg](https://github.com/ashbb/shoes_tutorial_walkthrough/raw/master/imgs/009.jpg)

Keep track of stuff by naming them as variables.

	Shoes.app {
	  @push = button "Push me"
	  @note = para "Nothing pushed so far"
	}

----------------------

![010.jpg](https://github.com/ashbb/shoes_tutorial_walkthrough/raw/master/imgs/010.jpg)

You can then put the variables into action. When the button is clicked, the @node changes to the message shown in the picture.

	Shoes.app {
	  @push = button "Push me"
	  @note = para "Nothing pushed so far"
	
	  @push.click {
	    @note.replace "Aha! Click!"
	  }
	}

----------------------

![011.jpg](https://github.com/ashbb/shoes_tutorial_walkthrough/raw/master/imgs/011.jpg)

See if you can figure out this one. How does the gradient work? How are the letters styled?

	Shoes.app do
	  background "#F3F".."#F90"
	  title "Shoooes", :top => 60,
	    :align => "center",
	    :font => "Trebuchet MS",
	    :stroke => white
	end

In this example, I used do and end rather than the braces. Same meaning.

----------------------

![012.jpg](https://github.com/ashbb/shoes_tutorial_walkthrough/raw/master/imgs/012.jpg)

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

![013.jpg](https://github.com/ashbb/shoes_tutorial_walkthrough/raw/master/imgs/013.jpg)

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


![014.jpg](https://github.com/ashbb/shoes_tutorial_walkthrough/raw/master/imgs/014.jpg)

----------------------

![015.jpg](https://github.com/ashbb/shoes_tutorial_walkthrough/raw/master/imgs/015.jpg)

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

![016.jpg](https://github.com/ashbb/shoes_tutorial_walkthrough/raw/master/imgs/016.jpg)

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

Don't worry if you haven't picked up a whole lot reading through these. To get the hang of it, you'll need to alter these yourself. Try fiddling with the numbers and colors. Experiment, you know?

----------------------

![017.jpg](https://github.com/ashbb/shoes_tutorial_walkthrough/raw/master/imgs/017.jpg)

Ready for more? See the [manuals](http://shoes.heroku.com/manual/Hello.html) page for a pair of longer instructions. Particularly the guide book [Nobody Knows Shoes](http://cloud.github.com/downloads/shoes/shoes/nks.pdf), which teaches the ten essential commands to get going with Shoes.

