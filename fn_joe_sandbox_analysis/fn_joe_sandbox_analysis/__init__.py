# (c) Copyright IBM Corp. 2018. All Rights Reserved.
import pkg_resources
try:
    __version__ = pkg_resources.get_distribution(__name__).version
except pkg_resources.DistributionNotFound:
    pass