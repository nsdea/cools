import os
import pfruck_contabo

from dotenv import load_dotenv
from termcolor import cprint

import auth
import snapshot

load_dotenv()

configuration = pfruck_contabo.Configuration(access_token=os.getenv('CONTABO_ACCESS'))

if not os.path.exists('.env'):
    cprint('Cools · ERROR: No .env file found! ', 'red')
    cprint('Cools · TIP: Open the auth.sh and follow its instructions! ', 'yellow')

auth.update()
snapshot.create(configuration)
