Pod::Spec.new do |spec|
    spec.name                     = 'untitled'
    spec.version                  = '1.0-SNAPSHOT'
    spec.homepage                 = ''
    spec.source                   = { :http=> 'https://github.com/LeartBytyqi1/CalculatorLib.git'}
    spec.authors                  = ''
    spec.license                  = ''
    spec.summary                  = 'Whatever'
    spec.vendored_frameworks      = 'build/cocoapods/framework/untitled.framework'
    spec.libraries                = 'c++'
                
                
                
    spec.pod_target_xcconfig = {
        'KOTLIN_PROJECT_PATH' => ':',
        'PRODUCT_MODULE_NAME' => 'untitled',
    }
                
    spec.script_phases = [
        {
            :name => 'Build untitled',
            :execution_position => :before_compile,
            :shell_path => '/bin/sh',
            :script => <<-SCRIPT
                if [ "YES" = "$OVERRIDE_KOTLIN_BUILD_IDE_SUPPORTED" ]; then
                  echo "Skipping Gradle build task invocation due to OVERRIDE_KOTLIN_BUILD_IDE_SUPPORTED environment variable set to \"YES\""
                  exit 0
                fi
                set -ev
                REPO_ROOT="$PODS_TARGET_SRCROOT"
                "$REPO_ROOT/../../AppData/Local/Temp/wrap11loc/gradlew" -p "$REPO_ROOT" $KOTLIN_PROJECT_PATH:syncFramework \
                    -Pkotlin.native.cocoapods.platform=$PLATFORM_NAME \
                    -Pkotlin.native.cocoapods.archs="$ARCHS" \
                    -Pkotlin.native.cocoapods.configuration="$CONFIGURATION"
            SCRIPT
        }
    ]
                
end