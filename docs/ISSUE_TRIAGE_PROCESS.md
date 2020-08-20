# Issue Triage Process

## Triage Bug Reports

1. [Search for issues with the labels `Status: In Triage` and `Type: Bug`](../../../issues?q=is%3Aopen+label%3A"Status%3A+In+Triage"+label%3A"Type%3A+Bug" "Issues with Label 'Status: In Triage' and `Type: Bug`")

2. Open one of the issues listed in the search results from step 1 above

3. Assess the following:

   - Is the bug report actually a question?
   - Is the bug report actually a feature request?
   - Is the bug a security vulnerability?
   - Is the bug report a duplicate?
   - Is the bug the intended functionality?
   - Is there enough information to perform this assessment?
   - Is the bug reproducible?

### Is a Question

1. Add the `Status: Closed` label and remove the `Status: In Triage` label

2. Copy the following, paste it into the comment text area, replace `<@REPORTER>` with an `@mention` to the reporter and close the issue:

   ```markdown
   <@REPORTER> - Thank you for submitting this bug report! Based on what you have provided, this appears to be a question. Please ask questions on [Stack Overflow](https://stackoverflow.com/questions/tagged/evernaut "Stack Overflow Questions Tagged with Evernaut") (use the `#evernaut` and `#[repository-name]` tags). Do not create an issue to ask a question.
   ```

### Is a Feature Request

1. Add the `Status: Closed` label and remove the `Status: In Triage` label

2. Copy the following, paste it into the comment text area, replace `<@REPORTER>` with an `@mention` to the reporter and close the issue:

   ```markdown
   <@REPORTER> - Thank you for submitting this bug report! Based on what you have provided, this appears to be a feature request rather than a bug report. Please [create a new issue](./new/choose "Create a New Issue") using the `Request a feature` template to request this feature.
   ```

### Is a Security Vulnerability

1. Add the `Status: Closed` label and remove the `Status: In Triage` label

2. Copy the following, paste it into the comment text area, replace `<@REPORTER>` with an `@mention` to the reporter and close the issue:

   ```markdown
   <@REPORTER> - Thank you for submitting this bug report! Based on what you have provided, this appears to be a security vulnerability. To report a security vulnerability, please follow the instructions in the [security policy](../docs/SECURITY.md "Security Policy").
   ```

3. Submit a security vulnerability by adhering to the instructions in the [security policy](../docs/SECURITY.md "Security Policy").

### Is a Duplicate

1. Add the `Status: Closed` label and remove the `Status: In Triage` label

2. Copy the following, paste it into the comment text area, replace `<@REPORTER>` with an `@mention` to the reporter, replace the `<LINK_TO_DUPLICATE_BUG_REPORT>` placeholder with a link to the duplicate bug report and close the issue:

   ```markdown
   <@REPORTER> - Thank you for submitting this bug report! Based on what you have provided, this appears to be a duplicate of an existing bug report.

   <LINK_TO_DUPLICATE_BUG_REPORT>
   ```

### Is the Intended Functionality

1. Add the `Status: Closed` label and remove the `Status: In Triage` label

2. Copy the following, paste it into the comment text area, replace `<@REPORTER>` with an `@mention` to the reporter and close the issue:

   ```markdown
   <@REPORTER> - Thank you for submitting this bug report! Based on what you have provided, this appears to be the intended functionality of this project. Please [create a new issue](./new/choose "Create a New Issue") using the `Request a feature` template to request supporting different functionality.
   ```

### Is Not Enough Information

1. Add the `Status: Blocked` label and remove the `Status: In Triage` label

2. Copy the following, paste it into the comment text area, replace `<@REPORTER>` with an `@mention` to the reporter and submit the comment:

   ```markdown
   <@REPORTER> - Thank you for submitting this bug report! Based on what you have provided, this issue cannot be properly assessed. Is there any other information you can provide to help describe the bug?
   ```

### Is Enough Information

1. Attempt to reproduce the bug by repeating the reproduction steps in the bug report

#### Reproducible Bug Reports

1. Add the `Status: Open` label and remove the `Status: In Triage` label

2. Update the issue title to match the project commit title standard (if necessary)

   - `#<ISSUE_NUMBER>: <VERB> <TINY_SUMMARY>`

3. Comment on the issue and `@mention` the reporter

   ```markdown
   <@REPORTER> - Thank you for submitting this bug report! Based on what you have provided, it is valid and contributions for a fix are welcome.
   ```

#### Unreproducible Bug Reports

1. Add the `Status: Blocked` label and remove the `Status: In Triage` label

2. Copy the following, paste it into the comment text area, replace `<@REPORTER>` with an `@mention` to the reporter and submit the comment:

   ```markdown
   <@REPORTER> - Thank you for submitting this bug report! Based on what you have provided, this bug cannot be reproduced. Is there any other information you can provide to help reproduce the bug?
   ```

## Triage Feature Requests

1. [Search for issues with the labels `Status: In Triage` and `Type: Feature`](../../../issues?q=is%3Aopen+label%3A"Status%3A+In+Triage"+label%3A"Type%3A+Feature" "Issues with Label 'Status: In Triage' and `Type: Feature`")

2. Open one of the issues listed in the search results from step 1 above

3. Assess the following:

   - Is the feature request actually a question?
   - Is the feature request actually a bug report?
   - Is the feature request a security vulnerability?
   - Is the feature request a duplicate?
   - Is the feature already implemented?
   - Is there enough information to perform this assessment?
   - Is the feature in scope for this project?

### Is a Question

1. Add the `Status: Closed` label and remove the `Status: In Triage` label

2. Copy the following, paste it into the comment text area, replace `<@REPORTER>` with an `@mention` to the reporter and close the issue:

   ```markdown
   <@REPORTER> - Thank you for submitting this feature request! Based on what you have provided, this appears to be a question. Please ask questions on [Stack Overflow](https://stackoverflow.com/questions/tagged/evernaut "Stack Overflow Questions Tagged with Evernaut") (use the `#evernaut` and `#[repository-name]` tags). Do not create an issue to ask a question.
   ```

### Is a Bug Report

1. Add the `Status: Closed` label and remove the `Status: In Triage` label

2. Copy the following, paste it into the comment text area, replace `<@REPORTER>` with an `@mention` to the reporter and close the issue:

   ```markdown
   <@REPORTER> - Thank you for submitting this feature request! Based on what you have provided, this appears to be a bug report rather than a feature request. Please [create a new issue](./new/choose "Create a New Issue") using the `Report a bug` template to report this bug.
   ```

### Is a Security Vulnerability

1. Add the `Status: Closed` label and remove the `Status: In Triage` label

2. Copy the following, paste it into the comment text area, replace `<@REPORTER>` with an `@mention` to the reporter and close the issue:

   ```markdown
   <@REPORTER> - Thank you for submitting this feature request! Based on what you have provided, this appears to be a security vulnerability. To report a security vulnerability, please follow the instructions in the [security policy](../docs/SECURITY.md "Security Policy").
   ```

3. Submit a security vulnerability by adhering to the instructions in the [security policy](../docs/SECURITY.md "Security Policy").

### Is a Duplicate

1. Add the `Status: Closed` label and remove the `Status: In Triage` label

2. Copy the following, paste it into the comment text area, replace `<@REPORTER>` with an `@mention` to the reporter, replace the `<LINK_TO_DUPLICATE_FEATURE_REQUEST>` placeholder with a link to the duplicate feature request and close the issue:

   ```markdown
   <@REPORTER> - Thank you for submitting this feature request! Based on what you have provided, this appears to be a duplicate of an existing feature request.

   <LINK_TO_DUPLICATE_FEATURE_REQUEST>
   ```

### Is already implemented

1. Add the `Status: Closed` label and remove the `Status: In Triage` label

2. Copy the following, paste it into the comment text area, replace `<@REPORTER>` with an `@mention` to the reporter and close the issue:

   ```markdown
   <@REPORTER> - Thank you for submitting this feature request! Based on what you have provided, this functionality appears to already be implemented.
   ```

### Is Not Enough Information

1. Add the `Status: Blocked` label and remove the `Status: In Triage` label

2. Copy the following, paste it into the comment text area, replace `<@REPORTER>` with an `@mention` to the reporter and submit the comment:

   ```markdown
   <@REPORTER> - Thank you for submitting this feature request! Based on what you have provided, this issue cannot be properly assessed. Is there any other information you can provide to help describe the feature?
   ```

### Is Enough Information

1. Assess whether the feature is in scope for this project

#### In Scope

1. Add the `Status: Open` label and remove the `Status: In Triage` label

2. Update the issue title to match the project commit title standard (if necessary)

   - `#<ISSUE_NUMBER>: <VERB> <TINY_SUMMARY>`

3. Comment on the issue and `@mention` the reporter

   ```markdown
   <@REPORTER> - Thank you for submitting this feature request! Based on what you have provided, it is in scope for this project and contributions for a fix are welcome.
   ```

#### Not in Scope

1. Add the `Status: Closed` label and remove the `Status: In Triage` label

2. Copy the following, paste it into the comment text area, replace `<@REPORTER>` with an `@mention` to the reporter and close the issue:

   ```markdown
   <@REPORTER> - Thank you for submitting this feature request! Based on what you have provided, this feature is not in scope for this project.
   ```

## Triage Blocked Issues

1. [Search for issues with the label `Status: Blocked`](../../../labels/Status%3A%20Blocked "Issues with Label 'Status: Blocked'")

2. Open one of the issues listed in the search results from step 1 above

3. Look through the comments on the issue to determine if the issue status should change

### Issue Status Can Change

1. Follow the steps in the other relevant sections of this process

### Issue Status Cannot Change

If more than 30 days have passed since adding the `Status: Blocked` label, proceed with the following steps:

1. Add the `Status: Closed` label and remove the `Status: Blocked` label

2. Copy the following, paste it into the comment text area and close the issue:

   ```markdown
   Due to inactivity this issue has been closed. Please [create a new issue](./new/choose "Create a New Issue") and reference this issue if any new information can be provided.
   ```
