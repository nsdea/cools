import uuid
import random
import pfruck_contabo

from pfruck_contabo.api import snapshots_api
from pfruck_contabo.model.create_snapshot_request import CreateSnapshotRequest

def create(config: pfruck_contabo.Configuration):
    with pfruck_contabo.ApiClient(config) as api_client:
        api_instance = snapshots_api.SnapshotsApi(api_client)
        x_request_id = str(uuid.uuid4())
        instance_id = random.randint(10000, 99999)
        x_trace_id = 'x-trace-cools'

        request = CreateSnapshotRequest(
            name="CoolsAutoBackup",
            description="This snapshot was created using Cools (github.com/nsde/cools).",
        )

        api_instance.create_snapshot(x_request_id, instance_id, request, x_trace_id=x_trace_id)
