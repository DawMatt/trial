# https://www.apicur.io/registry/docs/apicurio-registry/2.2.x/getting-started/assembly-intro-to-the-registry.html

# https://www.apicur.io/registry/docs/apicurio-registry/2.2.x/getting-started/assembly-installing-registry-docker.html#installing-registry-in-memory-storage_registry

# 1. Get the Apicurio Registry container image:

docker pull apicurio/apicurio-registry-mem

# 2. Run the container image:

docker run -d --rm -it -p 8080:8080 apicurio/apicurio-registry-mem

open http://localhost:8080

echo Use "docker kill <containerid>" to clean up container once finished

# 3. Send a test request using the Apicurio Registry REST API. For example, enter the following curl command to create a simple Avro schema artifact for a share price application in the registry:

# curl -X POST -H "Content-type: application/json; artifactType=AVRO" -H "X-Registry-ArtifactId: share-price" --data '{"type":"record","name":"price","namespace":"com.example","fields":[{"name":"symbol","type":"string"},{"name":"price","type":"string"}]}' http://localhost:8080/apis/registry/v2/groups/my-group/artifacts

# 4. Verify that the response includes the expected JSON body to confirm that the Avro schema artifact was created in the registry. For example:

# {"name":"price","createdBy":"","createdOn":"2021-03-19T17:48:17+0000","modifiedOn":"2021-03-19T17:48:17+0000","id":"share-price","version":1,"type":"AVRO","globalId":12,"state":"ENABLED","groupId":"my-group","contentId":12}
