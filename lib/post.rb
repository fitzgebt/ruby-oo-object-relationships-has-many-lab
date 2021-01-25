require 'pry'


class Post
    attr_accessor :name, :author
    
    @@all = []
    
    def initialize(name)
        @name=name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def title(title)
        @name=title
    end
    
    def title
        @name
    end

    def author_name
        self.author != nil ? self.author.name : nil
    end

end
