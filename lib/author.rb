class Author
  attr_accessor :name

  @@post_count=0
    def self.post_count
      @@post_count
    end

   def initialize(name)
     @name=name
     @posts=[]
   end

   def posts
     @posts
   end

   def add_post(post)
       self.posts << post
       post.author=self
       @@post_count +=1
end

def add_post_by_title(post_title)
  post=Post.new("My Great Blog Post")
  self.posts << post
  post.author = self
  @@post_count +=1
end
end
