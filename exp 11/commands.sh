# ==============================================================================
# EXPERIMENT 11: Write JavaScript Program and Perform Testing Using Selenium
# ==============================================================================

# Step 1: Prepare the HTML and JavaScript file
# ------------------------------------------------------------------------------
# The file "program.html" contains an HTML button and a paragraph counter.
# Update the path in Main.java: driver.get("file:///path/to/program.html");
# with the absolute path to program.html on your machine.

# Step 2: Compile the Selenium JUnit Test Class
# ------------------------------------------------------------------------------
# Compile Main.java with Selenium and JUnit libraries in the classpath:
# On Linux/macOS:
javac -cp ".:selenium-server-standalone.jar:junit-4.13.2.jar:hamcrest-core-1.3.jar:*" Main.java

# On Windows:
# javac -cp ".;selenium-server-standalone.jar;junit-4.13.2.jar;hamcrest-core-1.3.jar;*" Main.java

# Step 3: Run the Test
# ------------------------------------------------------------------------------
# Run the test using JUnit's Core test runner:
# On Linux/macOS:
java -cp ".:selenium-server-standalone.jar:junit-4.13.2.jar:hamcrest-core-1.3.jar:*" org.junit.runner.JUnitCore Main

# On Windows:
# java -cp ".;selenium-server-standalone.jar;junit-4.13.2.jar;hamcrest-core-1.3.jar;*" org.junit.runner.JUnitCore Main

# Expected output:
# Time: 0.189
# OK (1 test)
#
# This output indicates that the test case passed, and the increment button
# was successfully clicked, causing the output to be incremented by 1.
