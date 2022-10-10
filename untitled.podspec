Pod::Spec.new do |spec|
    spec.name                     = 'untitled'
    spec.version                  = '1.0-SNAPSHOT'
    spec.homepage                 = 'as'
    spec.source                   = { :http=> 'https://github.com/LeartBytyqi1/CalculatorLib.git'}
    spec.authors                  = 'as'
    spec.license                  = ''
    spec.summary                  = 'Whatever'
    spec.vendored_frameworks      = 'src'
    spec.libraries                = 'c++'
    spec.ios.deployment_target = '14.0'
end