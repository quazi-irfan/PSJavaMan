#  set-executionpolicy unrestricted

# Step 1: Create a new env variable JAVA_HOME and set it to 'C:\Java\jdk-15.0.1'
[System.Environment]::SetEnvironmentVariable("JAVA_HOME","C:\Java\jdk-15.0.1", [System.EnvironmentVariableTarget]::User);

# Step 2: Fetch the value of JAVA_HOME env variable and save it to javaPath
$javaPath =  [System.Environment]::GetEnvironmentVariable('JAVA_HOME',[System.EnvironmentVariableTarget]::User);

# Step 3: Fetch the value of Path variable and save it to a oldPath
$oldPath = [System.Environment]::GetEnvironmentVariable('Path',[System.EnvironmentVariableTarget]::User);

# Step 4: Append the JAVA_HOME value and '\bin;' to the end of Path variable
$newPath = $oldPath + $javaPath + "\bin;"

# Step 5: Update the Path variable
[System.Environment]::SetEnvironmentVariable('Path',$newPath,[System.EnvironmentVariableTarget]::User);

echo "OpenJDK 15 Activated"