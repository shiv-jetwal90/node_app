FROM readytalk/nodejs

# Add our configuration files and scripts
ARG buildtime_variable
WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 80
ENV env_var_name=$buildtime_variable

ENTRYPOINT ["/nodejs/bin/npm", "start"]
