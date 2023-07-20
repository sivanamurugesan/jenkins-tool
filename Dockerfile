# Use the official Jenkins image as the base image
FROM jenkins/jenkins:lts

# Switch to root user to install additional tools
USER root

# Install basic dependencies and Python
RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    wget \
    python3 \
    python3-pip \
    lsb-release 

# Install Docker CLI
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
  https://download.docker.com/linux/debian/gpg \
  && echo "deb [arch=$(dpkg --print-architecture) \
  signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list \
  && apt-get update && apt-get install -y docker-ce-cli

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs

# Install Maven
RUN apt-get install -y maven

# Install Gradle
RUN wget https://services.gradle.org/distributions/gradle-7.1-bin.zip -P /tmp && \
    unzip -d /opt /tmp/gradle-7.1-bin.zip && \
    ln -s /opt/gradle-7.1/bin/gradle /usr/bin/gradle

# Install PHP and Composer
RUN apt-get install -y php-cli php-zip && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install SonarQube Scanner
RUN wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.2.2472-linux.zip -P /tmp && \
    unzip -d /opt /tmp/sonar-scanner-cli-4.6.2.2472-linux.zip && \
    ln -s /opt/sonar-scanner-4.6.2.2472-linux/bin/sonar-scanner /usr/bin/sonar-scanner

# Clean up unnecessary files
RUN rm -rf /tmp/*

# Switch back to the jenkins user
USER jenkins

RUN jenkins-plugin-cli --plugins "blueocean:1.25.3 docker-workflow:1.28"
