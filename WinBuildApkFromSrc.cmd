rem cd /d %~dp0

rem NOTE: Currently the batch is not working. You have to copy the command and run it from buildserver/lib folder directly


@echo off
echo "Starting AiLiveComplete BuildServer to build apk from source..."
echo "Syntax is:"
echo " WinBuildApkFromSrc mySource.zip myUserName outputFolder"
echo "   where mySource.zip is full path to AI zip file"
echo "         myUserName is like jdoe@gmail.com"
echo "         outputFilder is where you want the apk to be generated to"
echo "    e.g. WinBuildApkFromSrc.cmd C:\Users\Me\Downloads\SQLite3.apk kkashi01@gmail.com C:\Users\Me\Downloads     "

rem cd BuildServer\lib
rem "%JAVA_HOME%\bin\java" -Xmx1g -cp BuildServer.jar;CommonUtils.jar;CommonVersion.jar;FastInfoset-1.2.2.jar;activation-1.1.jar;args4j-2.0.18.jar;asm-3.1.jar;commons-io-2.0.1.jar;grizzly-servlet-webserver-1.9.18-i.jar;guava-14.0.1.jar;http-20070405.jar;jackson-core-asl-1.9.4.jar;jaxb-api-2.1.jar;jaxb-impl-2.1.10.jar;jaxb-xjc.jar;jdom-1.0.jar;jersey-bundle-1.3.jar;jersey-multipart-1.3.jar;jettison-1.1.jar;json.jar;jsr311-api-1.1.1.jar;localizer.jar;mail-1.4.jar;rome-0.9.jar;sdklib.jar;stax-api-1.0-2.jar;wadl-cmdline.jar;wadl-core.jar;wadl2java.jar -Dfile.encoding=UTF-8 com.google.appinventor.buildserver.Main  --inputZipFile %1 --userName %2 --outputDir %3

"%JAVA_HOME%\bin\java" -Xmx1g -cp activation-1.1.jar;jersey-bundle-1.3.jar;args4j-2.0.18.jar;jersey-multipart-1.3.jar;asm-3.1.jar;jettison-1.1.jar;BuildServer.jar;json.jar;CommonUtils.jar;jsr311-api-1.1.1.jar;CommonVersion.jar;localizer.jar;FastInfoset-1.2.2.jar;mail-1.4.jar;grizzly-servlet-webserver-1.9.18-i.jar;commons-io-2.0.1.jar;guava-14.0.1.jar;rome-0.9.jar;http-20070405.jar;bcprov-jdk15on-149.jar;bcpkix-jdk15on-149.jar;sdklib.jar;jackson-core-asl-1.9.4.jar;stax-api-1.0-2.jar;jaxb-api-2.1.jar;wadl2java.jar;jaxb-impl-2.1.10.jar;wadl-cmdline.jar;jaxb-xjc.jar;wadl-core.jar;jdom-1.0.jar -Dfile.encoding=UTF-8 com.google.appinventor.buildserver.Main --inputZipFile C:\Users\Me\Downloads\foo2.aia --userName kkashi01@gmail.com --outputDir C:\Users\Me\Downloads


pause




		

