terraform {
  required_providers {
    launchdarkly = {
      source = "launchdarkly/launchdarkly"
      version = "~> 2.0"
    }
  }
  required_version = "~> 0.13.0"
}

provider "launchdarkly" {
  version     = "~> 2.0"
  access_token = "sdk-5acffbcf-a717-43b3-a980-df613ca456f0"
}

resource "launchdarkly_feature_flag" "react_background_color" {
  project_key = "623ba71aaa61030d7f6a8cea"
  key         = "reactBackgroundColor"
  name        = "React Background Color"

  variation_type = "string"
  variations {
    value       = "gray"
    name        = "Gray"
  }
  variations {
    value       = "purple"
    name        = "Purple"
  }
  variations {
    value       = "blue"
    name        = "Blue"
  }
  variations {
    value       = "red"
    name        = "Red"
  }

  defaults {
    on_variation  = 1
    off_variation = 0
  }

  client_side_availability {
    using_environment_id = true
  }
}

resource "launchdarkly_feature_flag" "react_qr_code" {
  project_key = "623ba71aaa61030d7f6a8cea"
  key         = "reactQRCode"
  name        = "React QR Code"

  variation_type = "boolean"
  variations {
    value       = true
    name        = "True"
  }
  variations {
    value       = false
    name        = "False"
  }

  defaults {
    on_variation  = 0
    off_variation = 1
  }

  client_side_availability {
    using_environment_id = true
  }
}

resource "launchdarkly_feature_flag" "parent_branding" {
  project_key = "623ba71aaa61030d7f6a8cea"
  key         = "reactParentBrand"
  name        = "React Parent Brand"

  variation_type = "boolean"
  variations {
    value       = true
    name        = "New"
  }
  variations {
    value       = false
    name        = "Old"
  }

  defaults {
    on_variation  = 0
    off_variation = 1
  }

  client_side_availability {
    using_environment_id = true
  }
}

resource "launchdarkly_feature_flag" "child_header" {
  project_key = "623ba71aaa61030d7f6a8cea"
  key         = "reactChildHeaderLogo"
  name        = "React Child Header Logo"

  variation_type = "boolean"
  variations {
    value       = true
    name        = "New"
  }
  variations {
    value       = false
    name        = "Old"
  }

  defaults {
    on_variation  = 0
    off_variation = 1
  }

  client_side_availability {
    using_environment_id = true
  }
}

resource "launchdarkly_feature_flag" "child_spinny" {
  project_key = "623ba71aaa61030d7f6a8cea"
  key         = "reactChildSpinnyLogo"
  name        = "React Child Spinny Logo"

  variation_type = "boolean"
  variations {
    value       = true
    name        = "New"
  }
  variations {
    value       = false
    name        = "Old"
  }

  defaults {
    on_variation  = 0
    off_variation = 1
  }

  client_side_availability {
    using_environment_id = true
  }
}

resource "launchdarkly_feature_flag" "child_toggle" {
  project_key = "623ba71aaa61030d7f6a8cea"
  key         = "reactChildToggle"
  name        = "React Child Toggle"

  variation_type = "boolean"
  variations {
    value       = true
    name        = "New"
  }
  variations {
    value       = false
    name        = "Old"
  }

  defaults {
    on_variation  = 0
    off_variation = 1
  }

  client_side_availability {
    using_environment_id = true
  }
}


resource "launchdarkly_feature_flag" "customer_logo" {
  project_key = "623ba71aaa61030d7f6a8cea"
  key         = "reactCustomerLogo"
  name        = "Customer Logo"

  variation_type = "string"
  variations {
    value       = "https://www.link_to_your_logo.png"
    name        = "Our Logo"
  }
  variations {
    value       = "https://www.link_to_another_image.png"
    name        = "Some Other Image"
  }

  defaults {
    on_variation  = 1
    off_variation = 0
  }

  client_side_availability {
    using_environment_id = true
  }
}


resource "launchdarkly_feature_flag" "show_customer_logo" {
  project_key = "623ba71aaa61030d7f6a8cea"
  key         = "reactShowCustomerLogo"
  name        = "Show Customer Logo"

  variation_type = "boolean"
  variations {
    value       = true
    name        = "True"
  }
  variations {
    value       = false
    name        = "False"
  }

  defaults {
    on_variation  = 0
    off_variation = 1
  }

  client_side_availability {
    using_environment_id = true
  }
}

resource "launchdarkly_feature_flag" "show_heart" {
  project_key = "623ba71aaa61030d7f6a8cea"
  key         = "reactShowHeart"
  name        = "Show Heart"

  variation_type = "boolean"
  variations {
    value       = true
    name        = "True"
  }
  variations {
    value       = false
    name        = "False"
  }

  defaults {
    on_variation  = 0
    off_variation = 1
  }

  client_side_availability {
    using_environment_id = true
  }
}