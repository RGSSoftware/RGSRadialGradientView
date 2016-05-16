
Pod::Spec.new do |s|
  s.name             = "RGSRadialGradientView"
  s.version          = "0.1.0"
  s.summary          = "A simple radial gradient view for iOS."
  s.description      = <<-DESC
                        A simple, reusable radial gradient view for iOS.
                       DESC

  s.homepage         = "https://github.com/RGSSoftware/RGSRadialGradientView"
  s.license          = 'MIT'
  s.author           = { "Randel Smith" => "rs@randelsmith.com" }
  s.source           = { :git => "https://github.com/RGSSoftware/RGSRadialGradientView.git", :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'RGSRadialGradientView/Classes/**/*'

end
