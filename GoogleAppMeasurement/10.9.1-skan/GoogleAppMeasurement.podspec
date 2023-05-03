Pod::Spec.new do |s|
    s.name             = 'GoogleAppMeasurement'
    s.version          = '10.9.1-skan'
    s.summary          = 'Shared measurement methods for Google libraries. Not intended for direct use.'

    s.description      = <<-DESC
    Measurement methods that are shared between
    Google libraries. This pod does not expose
    any headers and isn't intended for direct
    use, but rather as a dependency of some
    Google libraries.
    DESC

    s.homepage         = 'https://developers.google.com/ios'
    s.license          = { :type => 'Copyright', :text => 'Copyright 2022 Google' }
    s.authors          = 'Google, Inc.'

    s.source           = {
        :http => 'https://dl.google.com/firebase/ios/analytics/96c5c5651d45e3c0/GoogleAppMeasurement-10.9.1-skan.tar.gz'
    }

    s.cocoapods_version = '>= 1.10.2'

    s.ios.deployment_target  = '10.0'
    s.osx.deployment_target  = '10.13'
    s.tvos.deployment_target = '12.0'

    s.libraries  = 'c++', 'sqlite3', 'z'
    s.frameworks = 'StoreKit'

    s.dependency 'GoogleUtilities/AppDelegateSwizzler', '~> 7.11'
    s.dependency 'GoogleUtilities/MethodSwizzler', '~> 7.11'
    s.dependency 'GoogleUtilities/NSData+zlib', '~> 7.11'
    s.dependency 'GoogleUtilities/Network', '~> 7.11'
    s.dependency 'nanopb', '>= 2.30908.0', '< 2.30910.0'

    s.default_subspecs = 'AdIdSupport'

    s.subspec 'AdIdSupport' do |ss|
        ss.dependency 'GoogleAppMeasurement/WithoutAdIdSupport', '10.9.1-skan'
        ss.vendored_frameworks = 'Frameworks/GoogleAppMeasurementIdentitySupport.xcframework'
    end

    s.subspec 'WithoutAdIdSupport' do |ss|
        ss.vendored_frameworks = 'Frameworks/GoogleAppMeasurement.xcframework'
    end

end
