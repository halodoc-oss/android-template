# Code Templates for Android studio

## Overview

Templates are specifications of the default contents to be generated when creating a new file. When used, these templates provide initial code and formatting that is expected to be in a file/feature as per industry standards/ company’s architecture and adhered guidelines.

## Usage

Clone the code templates repo at android-templates

## Feature templates
### Installation

1. Navigate to ```feature-template``` folder

2. ```run sh copy_templates.sh```

This would copy the templates to ```$HOME/.android``` , in-turn allows the templates to be discoverable by Android Studio

### Usage

1. Right click on any of the package folder, and then **New > Other > Halodoc Feature Template**.
<img width="986" alt="Screen Shot 2020-02-11 at 12 59 49 PM" src="https://user-images.githubusercontent.com/90022116/133194831-ef51cf7e-94c9-4250-955f-4836159c9ad9.png">

2. Configure the Feature Name and Package Name
<img width="644" alt="Screen Shot 2020-02-11 at 1 03 05 PM" src="https://user-images.githubusercontent.com/90022116/133194897-6c72a687-c4ba-4805-accd-c7cb071f2b65.png">
Optionally choose **containsLocalDataSource** and **containsLiveConnectDataSource** to include files related to fetching data from local data store and/or live connect data source

3. Ensure the files created as per the naming conventions
<img width="676" alt="Screen Shot 2020-02-11 at 1 05 50 PM" src="https://user-images.githubusercontent.com/90022116/133195006-1f6ef9f6-f05e-44db-94e1-07dfbb310e9b.png">


