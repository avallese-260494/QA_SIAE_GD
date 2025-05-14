import os.path
import subprocess
import shutil

from pathlib import Path

s = "org/slf4j/slf4j-simple/2.1.0-alpha1/slf4j-simple-2.1.0-alpha1.jar;org/slf4j/slf4j-api/2.1.0-alpha1/slf4j-api-2.1.0-alpha1.jar;org/seleniumhq/selenium/selenium-java/4.13.0/selenium-java-4.13.0.jar;org/seleniumhq/selenium/selenium-api/4.13.0/selenium-api-4.13.0.jar;org/seleniumhq/selenium/selenium-chrome-driver/4.13.0/selenium-chrome-driver-4.13.0.jar;com/google/auto/service/auto-service-annotations/1.1.1/auto-service-annotations-1.1.1.jar;org/seleniumhq/selenium/selenium-chromium-driver/4.13.0/selenium-chromium-driver-4.13.0.jar;org/seleniumhq/selenium/selenium-json/4.13.0/selenium-json-4.13.0.jar;org/seleniumhq/selenium/selenium-manager/4.13.0/selenium-manager-4.13.0.jar;org/seleniumhq/selenium/selenium-devtools-v115/4.13.0/selenium-devtools-v115-4.13.0.jar;org/seleniumhq/selenium/selenium-devtools-v116/4.13.0/selenium-devtools-v116-4.13.0.jar;org/seleniumhq/selenium/selenium-devtools-v117/4.13.0/selenium-devtools-v117-4.13.0.jar;org/seleniumhq/selenium/selenium-devtools-v85/4.13.0/selenium-devtools-v85-4.13.0.jar;org/seleniumhq/selenium/selenium-edge-driver/4.13.0/selenium-edge-driver-4.13.0.jar;org/seleniumhq/selenium/selenium-firefox-driver/4.13.0/selenium-firefox-driver-4.13.0.jar;org/seleniumhq/selenium/selenium-http/4.13.0/selenium-http-4.13.0.jar;dev/failsafe/failsafe/3.3.2/failsafe-3.3.2.jar;org/seleniumhq/selenium/selenium-ie-driver/4.13.0/selenium-ie-driver-4.13.0.jar;org/seleniumhq/selenium/selenium-remote-driver/4.13.0/selenium-remote-driver-4.13.0.jar;io/netty/netty-buffer/4.1.96.Final/netty-buffer-4.1.96.Final.jar;io/netty/netty-codec-http/4.1.96.Final/netty-codec-http-4.1.96.Final.jar;io/netty/netty-common/4.1.96.Final/netty-common-4.1.96.Final.jar;io/netty/netty-transport-classes-epoll/4.1.96.Final/netty-transport-classes-epoll-4.1.96.Final.jar;io/netty/netty-transport-classes-kqueue/4.1.96.Final/netty-transport-classes-kqueue-4.1.96.Final.jar;io/netty/netty-transport-native-epoll/4.1.96.Final/netty-transport-native-epoll-4.1.96.Final.jar;io/netty/netty-transport-native-kqueue/4.1.96.Final/netty-transport-native-kqueue-4.1.96.Final.jar;io/netty/netty-transport-native-unix-common/4.1.96.Final/netty-transport-native-unix-common-4.1.96.Final.jar;io/netty/netty-transport/4.1.96.Final/netty-transport-4.1.96.Final.jar;io/opentelemetry/opentelemetry-api/1.28.0/opentelemetry-api-1.28.0.jar;io/opentelemetry/opentelemetry-context/1.28.0/opentelemetry-context-1.28.0.jar;io/opentelemetry/opentelemetry-exporter-logging/1.28.0/opentelemetry-exporter-logging-1.28.0.jar;io/opentelemetry/opentelemetry-sdk-metrics/1.28.0/opentelemetry-sdk-metrics-1.28.0.jar;io/opentelemetry/opentelemetry-extension-incubator/1.28.0-alpha/opentelemetry-extension-incubator-1.28.0-alpha.jar;io/opentelemetry/opentelemetry-sdk-logs/1.28.0/opentelemetry-sdk-logs-1.28.0.jar;io/opentelemetry/opentelemetry-sdk-common/1.28.0/opentelemetry-sdk-common-1.28.0.jar;io/opentelemetry/opentelemetry-sdk-extension-autoconfigure-spi/1.28.0/opentelemetry-sdk-extension-autoconfigure-spi-1.28.0.jar;io/opentelemetry/opentelemetry-sdk-extension-autoconfigure/1.28.0/opentelemetry-sdk-extension-autoconfigure-1.28.0.jar;io/opentelemetry/opentelemetry-api-events/1.28.0-alpha/opentelemetry-api-events-1.28.0-alpha.jar;io/opentelemetry/opentelemetry-sdk-trace/1.28.0/opentelemetry-sdk-trace-1.28.0.jar;io/opentelemetry/opentelemetry-sdk/1.28.0/opentelemetry-sdk-1.28.0.jar;io/opentelemetry/opentelemetry-semconv/1.28.0-alpha/opentelemetry-semconv-1.28.0-alpha.jar;net/bytebuddy/byte-buddy/1.14.5/byte-buddy-1.14.5.jar;org/asynchttpclient/async-http-client/2.12.3/async-http-client-2.12.3.jar;org/asynchttpclient/async-http-client-netty-utils/2.12.3/async-http-client-netty-utils-2.12.3.jar;org/reactivestreams/reactive-streams/1.0.3/reactive-streams-1.0.3.jar;com/typesafe/netty/netty-reactive-streams/2.0.4/netty-reactive-streams-2.0.4.jar;com/sun/activation/jakarta.activation/1.2.2/jakarta.activation-1.2.2.jar;org/seleniumhq/selenium/selenium-os/4.13.0/selenium-os-4.13.0.jar;org/seleniumhq/selenium/selenium-safari-driver/4.13.0/selenium-safari-driver-4.13.0.jar;org/seleniumhq/selenium/selenium-support/4.13.0/selenium-support-4.13.0.jar;concept/automation/automix/3.0.2-RETAIL-LITE/automix-3.0.2-RETAIL-LITE.jar;org/mongodb/mongodb-driver-sync/5.1.0/mongodb-driver-sync-5.1.0.jar;org/mongodb/bson/5.1.0/bson-5.1.0.jar;org/mongodb/mongodb-driver-core/5.1.0/mongodb-driver-core-5.1.0.jar;org/mongodb/bson-record-codec/5.1.0/bson-record-codec-5.1.0.jar;io/netty/netty-all/4.1.109.Final/netty-all-4.1.109.Final.jar;io/netty/netty-codec/4.1.109.Final/netty-codec-4.1.109.Final.jar;io/netty/netty-codec-dns/4.1.109.Final/netty-codec-dns-4.1.109.Final.jar;io/netty/netty-codec-haproxy/4.1.109.Final/netty-codec-haproxy-4.1.109.Final.jar;io/netty/netty-codec-http2/4.1.109.Final/netty-codec-http2-4.1.109.Final.jar;io/netty/netty-codec-memcache/4.1.109.Final/netty-codec-memcache-4.1.109.Final.jar;io/netty/netty-codec-mqtt/4.1.109.Final/netty-codec-mqtt-4.1.109.Final.jar;io/netty/netty-codec-redis/4.1.109.Final/netty-codec-redis-4.1.109.Final.jar;io/netty/netty-codec-smtp/4.1.109.Final/netty-codec-smtp-4.1.109.Final.jar;io/netty/netty-codec-socks/4.1.109.Final/netty-codec-socks-4.1.109.Final.jar;io/netty/netty-codec-stomp/4.1.109.Final/netty-codec-stomp-4.1.109.Final.jar;io/netty/netty-codec-xml/4.1.109.Final/netty-codec-xml-4.1.109.Final.jar;io/netty/netty-handler/4.1.109.Final/netty-handler-4.1.109.Final.jar;io/netty/netty-handler-proxy/4.1.109.Final/netty-handler-proxy-4.1.109.Final.jar;io/netty/netty-handler-ssl-ocsp/4.1.109.Final/netty-handler-ssl-ocsp-4.1.109.Final.jar;io/netty/netty-resolver/4.1.109.Final/netty-resolver-4.1.109.Final.jar;io/netty/netty-resolver-dns/4.1.109.Final/netty-resolver-dns-4.1.109.Final.jar;io/netty/netty-transport-rxtx/4.1.109.Final/netty-transport-rxtx-4.1.109.Final.jar;io/netty/netty-transport-sctp/4.1.109.Final/netty-transport-sctp-4.1.109.Final.jar;io/netty/netty-transport-udt/4.1.109.Final/netty-transport-udt-4.1.109.Final.jar;io/netty/netty-resolver-dns-classes-macos/4.1.109.Final/netty-resolver-dns-classes-macos-4.1.109.Final.jar;io/netty/netty-transport-native-epoll/4.1.109.Final/netty-transport-native-epoll-4.1.109.Final-linux-x86_64.jar;io/netty/netty-transport-native-epoll/4.1.109.Final/netty-transport-native-epoll-4.1.109.Final-linux-aarch_64.jar;io/netty/netty-transport-native-epoll/4.1.109.Final/netty-transport-native-epoll-4.1.109.Final-linux-riscv64.jar;io/netty/netty-transport-native-kqueue/4.1.109.Final/netty-transport-native-kqueue-4.1.109.Final-osx-x86_64.jar;io/netty/netty-transport-native-kqueue/4.1.109.Final/netty-transport-native-kqueue-4.1.109.Final-osx-aarch_64.jar;io/netty/netty-resolver-dns-native-macos/4.1.109.Final/netty-resolver-dns-native-macos-4.1.109.Final-osx-x86_64.jar;io/netty/netty-resolver-dns-native-macos/4.1.109.Final/netty-resolver-dns-native-macos-4.1.109.Final-osx-aarch_64.jar;com/google/guava/guava/31.1-jre/guava-31.1-jre.jar;com/google/guava/failureaccess/1.0.1/failureaccess-1.0.1.jar;com/google/guava/listenablefuture/9999.0-empty-to-avoid-conflict-with-guava/listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;com/google/code/findbugs/jsr305/3.0.2/jsr305-3.0.2.jar;org/checkerframework/checker-qual/3.12.0/checker-qual-3.12.0.jar;com/google/errorprone/error_prone_annotations/2.11.0/error_prone_annotations-2.11.0.jar;com/google/j2objc/j2objc-annotations/1.3/j2objc-annotations-1.3.jar;ch/qos/logback/logback-core/1.2.3/logback-core-1.2.3.jar;org/testng/testng/6.14.3/testng-6.14.3.jar;com/beust/jcommander/1.72/jcommander-1.72.jar;org/apache-extras/beanshell/bsh/2.0b6/bsh-2.0b6.jar;ch/qos/logback/logback-classic/1.2.3/logback-classic-1.2.3.jar;io/cucumber/cucumber-core/4.2.6/cucumber-core-4.2.6.jar;io/cucumber/cucumber-html/0.2.7/cucumber-html-0.2.7.jar;io/cucumber/gherkin/5.1.0/gherkin-5.1.0.jar;io/cucumber/tag-expressions/1.1.1/tag-expressions-1.1.1.jar;io/cucumber/cucumber-expressions/6.2.0/cucumber-expressions-6.2.0.jar;io/cucumber/datatable/1.1.12/datatable-1.1.12.jar;io/cucumber/datatable-dependencies/1.1.12/datatable-dependencies-1.1.12.jar;io/cucumber/cucumber-java/4.2.6/cucumber-java-4.2.6.jar;com/google/code/gson/gson/2.8.6/gson-2.8.6.jar;org/json/json/20220924/json-20220924.jar;com/sun/mail/javax.mail/1.6.0/javax.mail-1.6.0.jar;javax/activation/activation/1.1/activation-1.1.jar;org/yaml/snakeyaml/1.25/snakeyaml-1.25.jar;com/aventstack/extentreports/4.1.7/extentreports-4.1.7.jar;org/freemarker/freemarker/2.3.29/freemarker-2.3.29.jar;org/apache/httpcomponents/httpmime/4.5.2/httpmime-4.5.2.jar;org/mongodb/mongodb-driver/3.12.0/mongodb-driver-3.12.0.jar;io/cucumber/cucumber-testng/4.2.6/cucumber-testng-4.2.6.jar;org/apache/httpcomponents/httpclient/4.5.14/httpclient-4.5.14.jar;org/apache/httpcomponents/httpcore/4.4.16/httpcore-4.4.16.jar;commons-logging/commons-logging/1.2/commons-logging-1.2.jar;commons-codec/commons-codec/1.11/commons-codec-1.11.jar;org/reflections/reflections/0.9.11/reflections-0.9.11.jar;org/javassist/javassist/3.21.0-GA/javassist-3.21.0-GA.jar;ru/yandex/qatools/ashot/ashot/1.5.4/ashot-1.5.4.jar;org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar;com/microsoft/edge/msedge-selenium-tools-java/3.141.0/msedge-selenium-tools-java-3.141.0.jar;org/apache/commons/commons-exec/1.3/commons-exec-1.3.jar;com/squareup/okhttp3/okhttp/3.11.0/okhttp-3.11.0.jar;com/squareup/okio/okio/1.14.0/okio-1.14.0.jar;io/github/bonigarcia/webdrivermanager/5.5.3/webdrivermanager-5.5.3.jar;com/github/docker-java/docker-java/3.3.3/docker-java-3.3.3.jar;com/github/docker-java/docker-java-core/3.3.3/docker-java-core-3.3.3.jar;com/github/docker-java/docker-java-api/3.3.3/docker-java-api-3.3.3.jar;com/fasterxml/jackson/core/jackson-annotations/2.10.3/jackson-annotations-2.10.3.jar;org/apache/commons/commons-compress/1.21/commons-compress-1.21.jar;com/fasterxml/jackson/core/jackson-databind/2.10.3/jackson-databind-2.10.3.jar;com/fasterxml/jackson/core/jackson-core/2.10.3/jackson-core-2.10.3.jar;org/bouncycastle/bcpkix-jdk18on/1.75/bcpkix-jdk18on-1.75.jar;org/bouncycastle/bcprov-jdk18on/1.75/bcprov-jdk18on-1.75.jar;org/bouncycastle/bcutil-jdk18on/1.75/bcutil-jdk18on-1.75.jar;org/slf4j/jcl-over-slf4j/1.7.30/jcl-over-slf4j-1.7.30.jar;com/github/docker-java/docker-java-transport-httpclient5/3.3.3/docker-java-transport-httpclient5-3.3.3.jar;com/github/docker-java/docker-java-transport/3.3.3/docker-java-transport-3.3.3.jar;net/java/dev/jna/jna/5.12.1/jna-5.12.1.jar;org/brotli/dec/0.1.2/dec-0.1.2.jar;org/apache/httpcomponents/client5/httpclient5/5.2.1/httpclient5-5.2.1.jar;org/apache/httpcomponents/core5/httpcore5/5.2/httpcore5-5.2.jar;org/apache/httpcomponents/core5/httpcore5-h2/5.2/httpcore5-h2-5.2.jar;io/appium/java-client/8.6.0/java-client-8.6.0.jar;org/apache/commons/commons-lang3/3.13.0/commons-lang3-3.13.0.jar;commons-io/commons-io/2.14.0/commons-io-2.14.0.jar;com/googlecode/json-simple/json-simple/1.1.1/json-simple-1.1.1.jar;junit/junit/4.10/junit-4.10.jar;"

s = s.replace("/", os.path.sep)

m2_dir = os.path.join(str(Path.home().absolute()), ".m2", "repository")
print(f"Using .m2 folder {m2_dir}")

# platform = "BS_ANDROID"
platform = "BS_" + os.environ["MOBILE_OS"].upper()

if os.environ["FeaturesTest"] == "ALL":
    features_android = [
        "Back_To_Previous_Page_ANDROID",
        "Check_Assigned_Route_Button_ANDROID",
        "Check_Compile_Report_Button_ANDROID",
        "Compile_Report_Device_Check_ANDROID",
        "Compile_Report_Summary_And_Sending_Report_Individual_Flow_ANDROID",
        "Compile_Report_Summary_Legal_Entity_Flow_ANDROID",
        "Compile_Report_With_Mandatory_Field_Validation_Individual_Flow_ANDROID",
        "Compile_Report_With_Mandatory_Field_Validation_Legal_Entity_Flow_ANDROID",
        "Feedback_Icon_ANDROID",
        "General_Filters_ANDROID",
        "Interrupted_Login_ANDROID",
        "LocalDetail_Page_Elements_ANDROID",
        "LocalDetail_Page_Options_ANDROID",
        "Login_ANDROID",
        "Login_Wrong_Credentials_ANDROID",
        "Profile_Icon_ANDROID",
        "Report_Form_Data_Auto_Fills_And_Address_Suggestions_ANDROID",
        "RoutesAndLocalsPage_Offline_ANDROID",
        "RoutesDetail_Page_Elements_ANDROID",
        "ViewingRoutes_Page_Elements_ANDROID",
    ]
    features_ios = [
        "Back_To_Previous_Page_IOS",
        "Check_Assigned_Route_Button_IOS",
        "Check_Compile_Report_Button_IOS",
        "Compile_Report_Device_Check_IOS",
        "Compile_Report_Summary_And_Sending_Report_Individual_Flow_IOS",
        "Compile_Report_Summary_Legal_Entity_Flow_IOS",
        "Compile_Report_With_Mandatory_Field_Validation_Individual_Flow_IOS",
        "Compile_Report_With_Mandatory_Field_Validation_Legal_Entity_Flow_IOS",
        "Feedback_Icon_IOS",
        "General_Filters_IOS",
        "Interrupted_Login_IOS",
        "LocalDetail_Page_Elements_IOS",
        "LocalDetail_Page_Options_IOS",
        "Login_IOS",
        "Login_Wrong_Credentials_IOS",
        "Profile_Icon_IOS",
        "Report_Form_Data_Auto_Fills_And_Address_Suggestions_IOS",
        "RoutesAndLocalsPage_Offline_IOS",
        "RoutesDetail_Page_Elements_IOS",
        "ViewingRoutes_Page_Elements_IOS",
    ]
else:
    features_android = []
    features_ios = []
    for test in os.environ["FeaturesTest"].split(";"):
        features_android.append(test+"_ANDROID");
        features_ios.append(test+"_IOS");

if os.environ["MOBILE_OS"].upper() == "ANDROID":
    features = features_android
else:
    features = features_ios
    os.environ["Capability"] = "iOS"
run_folder = "."
java_path = shutil.which('java').replace("//", "/")
classpath_jars = [os.path.join(m2_dir, e) for e in s.split(";")]
classpath = ";".join(classpath_jars)

for jar in classpath_jars:
    exists = os.path.exists(jar)
    print(f"{jar}: exists: {exists}")

print("Running test command")
for feature in features:
    process = subprocess.Popen(
        args=[
            "java.exe",
            "-Djdk.attach.allowAttachSelf=true",
            "-Dfile.encoding=UTF-8",
            # "-verbose:class",
            "-classpath",
            classpath + ";" + os.environ["JAR"],
            "main.Main",
            platform,
            feature
        ],
        cwd=run_folder,
        text=True,
        executable=java_path
    )

    print(process.wait())
    print(process.stdout)
