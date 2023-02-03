FROM sonatype/nexus3
COPY nexus-blobstore-google-cloud-0.0.6-SNAPSHOT.jar /opt/sonatype/nexus/system/org/sonatype/nexus/plugins/nexus-blobstore-google-cloud/0.0.6-SNAPSHOT/
ENV GOOGLE_APPLICATION_CREDENTIALS /run/secrets/google_application_credentials
COPY gce-credentials.json /run/secrets/
CMD ["/bin/bash"]
