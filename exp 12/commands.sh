# ==============================================================================
# EXPERIMENT 12: Develop Test Cases for Containerized Application Using Selenium
# ==============================================================================

# Step 1: Ensure the Containerized Application is Running
# ------------------------------------------------------------------------------
# Make sure your containerized web application is running and accessible on port 8080:
# (e.g. docker run -d -p 8080:80 --name mycontainer myimage)
# Test connection:
curl http://localhost:8080

# Step 2: Compile the Selenium JUnit Test Class
# ------------------------------------------------------------------------------
# Compile Main.java with Selenium and JUnit libraries in the classpath:
# On Linux/macOS:
javac -cp ".:selenium-server-standalone.jar:junit-4.13.2.jar:hamcrest-core-1.3.jar:*" Main.java

# On Windows:
# javac -cp ".;selenium-server-standalone.jar;junit-4.13.2.jar;hamcrest-core-1.3.jar;*" Main.java

# Step 3: Run the Test Cases
# ------------------------------------------------------------------------------
# Run the tests with JUnitCore test runner:
# On Linux/macOS:
java -cp ".:selenium-server-standalone.jar:junit-4.13.2.jar:hamcrest-core-1.3.jar:*" org.junit.runner.JUnitCore Main

# On Windows:
# java -cp ".;selenium-server-standalone.jar;junit-4.13.2.jar;hamcrest-core-1.3.jar;*" org.junit.runner.JUnitCore Main

# Expected output:
# Time: 1.135
# OK (2 tests)
#
# This output indicates that both test cases passed, and the containerized
# application is functioning as expected.
