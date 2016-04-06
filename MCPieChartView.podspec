Pod::Spec.new do |s|
  s.name         		= "MCPieChartView"
  s.version      		= "1.0.0"
  s.summary      		= "The iOS Pie Chart is a great tool to present information in the form of a pie chart"
  s.homepage     		= "https://github.com/foreksorg/ios-pie-chart-view"
  s.license      		= { :type => 'MIT', :file => 'LICENSE.md' }
  s.author       		= { "Vinicius Rodrigues" => "Vinicius Rodrigues" }
  s.source       		= { :git => "https://github.com/foreksorg/ios-pie-chart-view.git", :tag => "v#{s.version}" }
  s.platform     		= :ios, '6.1'
  s.requires_arc 		= true
  s.source_files 		= 'src/*.{h,m}'
  s.frameworks   	 	=  'QuartzCore'
end
