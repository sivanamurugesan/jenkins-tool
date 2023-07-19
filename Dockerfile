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
    python3-pip

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

