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
CMD         ["nginx" , "-g", "daemon off;"]