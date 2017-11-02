Pod::Spec.new do |s|
          #1.
          s.name               = "EZLogging"
          #2.
          s.version            = "1.0.0"
          #3.  
          s.summary         = "Sort description of 'EZLogging' framework"
          #4.
          s.homepage        = "http://www.oongyang.com"
          #5.
          s.license              = "MIT"
          #6.
          s.author               = "ChrisOY"
          #7.
          s.platform            = :ios, "10.0"
          #8.
          s.source              = { :git => "https://github.com/ChrisOY/EZLogging.git", :tag => "1.0.0" }
          #9.
          s.source_files     = "EZLogging", "EZLogging/**/*.{h,m,swift}"
    end