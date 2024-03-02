# Creating a Docker Image needs a file with a name as Dockerfile
# Dockerfile is about Instructuon & Argument

# ### Dockerfile Reference 
# ```
#     https://docs.docker.com/engine/reference/builder 
# ```

# CMD is like a startup where you can have once startup per script.
# What if you have multiple CMD's in the Dockerifle ? Only the CMD at the end will have the preference.

FROM        centos:7 
RUN         yum install epel-release -y  
RUN         yum install nginx -y 
ENV         project=roboshop
ENV         mongo='mongo-dev.roboshop.internal'
CMD         ["nginx" , "-g", "daemon off;"]

### What is the difference between CMD vs ENTRYPOINT

# # CMD can always be overriden from the command line, so if you want to restrict any command but not their arguments, we can use in conjunction with 

# FROM        centos:7 
# CMD         ["google.com"]
# # # Whatever you defined in ENTRYPOINT cannot be override
# # # CMD Argument will always be an input to the ENTRYPOINT
# ENTRYPOINT  ["ping", "-c" , "5"]