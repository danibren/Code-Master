from google.cloud import storage

def create_bucket(bucket_name):
    """Creates a new bucket."""
    # The ID of your GCS bucket
    # bucket_name = "your-new-bucket-name"

    storage_client = storage.Client()
    bucket = storage_client.create_bucket(bucket_name)

    print(f"Bucket {bucket.name} created.")
    return bucket
# Function to create a Cloud Storage bucket
