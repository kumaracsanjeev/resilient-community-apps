# -*- coding: utf-8 -*-
# pragma pylint: disable=unused-argument, no-self-use
# (c) Copyright IBM Corp. 2010, 2023. All Rights Reserved.
from resilient_lib import validate_fields
from os import path

# Directory of default templates
TEMPLATE_DIR = path.join(path.dirname(__file__), "data")

DEFAULT_SENTINEL_UPDATE_INCIDENT_TEMPLATE = path.join(TEMPLATE_DIR, "sentinel_update_incident_template.jinja")
DEFAULT_SENTINEL_CLOSE_INCIDENT_TEMPLATE = path.join(TEMPLATE_DIR, "sentinel_close_incident_template.jinja")
DEFAULT_INCIDENT_CREATION_TEMPLATE = path.join(TEMPLATE_DIR, "incident_creation_template.jinja")
DEFAULT_INCIDENT_UPDATE_TEMPLATE = path.join(TEMPLATE_DIR, "incident_update_template.jinja")
DEFAULT_INCIDENT_CLOSE_TEMPLATE = path.join(TEMPLATE_DIR, "incident_close_template.jinja")

REQUIRED_PROFILE_FIELDS = [{"name": "subscription_id", "placeholder": "aaa-bbb-fff"},
                           {"name": "workspace_name", "placeholder": "AzureExampleWorkspace"},
                           {"name": "resource_groupname", "placeholder": "ExampleGroupName"}]

PACKAGE_NAME = "fn_microsoft_sentinel"

class SentinelProfiles():
    def __init__(self, opts, options):
        self.profiles = self._load_profiles(opts, options)

    def _load_profiles(self, opts, options):
        """
        Load the app.config profiles for sentinel. Each profile represents a different workspace
        to pull incidents from.
        :raises KeyError: error when a named profile is not found in app.config
        :return: Dictionary of profiles
        """
        sentinel_profiles = options["sentinel_profiles"]

        # Confirm all profiles are valid
        profiles = {}
        profile_list = [item.strip() for item in sentinel_profiles.split(",")]
        for profile in profile_list:
            profile_name = f"{PACKAGE_NAME}:{profile}"
            profile_data = opts.get(profile_name)
            if not profile_data:
                raise KeyError(f"Unable to find Sentinel profile: {profile_name}")

            # Check each profile for the correct settings
            validate_fields(REQUIRED_PROFILE_FIELDS, profile_data)

            profiles[profile] = profile_data

        return profiles

    def get_profile(self, profile_name):
        """
        Collect the settings for a Sentinel profile: subscription, resource group, workspace
        :param profile_name [str]: name of profile in app.config
        :raises KeyError: profile not found
        :return [dict]: settings for a sentinel incident environment
        """
        if profile_name not in self.profiles:
            raise KeyError(f"Unable to find profile: {profile_name}")

        return self.profiles[profile_name]

    def get_profiles(self):
        """
        Return all profiles
        """
        return self.profiles
