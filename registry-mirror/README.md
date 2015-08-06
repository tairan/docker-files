# Set up a local registry mirror

## Step 1: Configure your Docker daemon to use the local registry mirror

	docker daemon --registry-mirror=http://<my-docker-mirror-host>

## Step 2: Run the local registry mirror

	docker-compose up -d

