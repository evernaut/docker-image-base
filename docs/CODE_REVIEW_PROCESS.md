# Code Review Process

## Mindset

- Adhere to the [Code of Conduct](./CODE_OF_CONDUCT.md "Code of Conduct")
- Start with a sincere, positive comment
- Be explicit
- Be verbose
- Be kind

## What not to Check

- Anything covered by GitHub actions

## What to Check

- The scope of the pull request is limited to the issue being resolved (where possible)
- The pull request does not resolve multiple issues (where possible)
- The changes resolve the issue
- The changes include documentation (where appropriate)
- The changes include tests (where appropriate)
- The changes are backwards compatible (where possible)
- The changes have the correct semantic version reference in the Changelog
- The changes are written in good English
- The changes are written as simply as possible
- The changes do not include dead code
- The changes remove all dead code that they introduce

## Review the Code

1. Navigate to the pull request, click the `Files changed` tab and click the `Review changes` button

2. Copy the following and paste it into the comment text area within the `Review changes` modal:

   ```markdown
   [ Sincere, positive comment ... ]

   - [ ] The scope of the pull request is limited to the issue being resolved (where possible)
   - [ ] The pull request does not resolve multiple issues (where possible)
   - [ ] The changes resolve the issue
   - [ ] The changes include documentation (where appropriate)
   - [ ] The changes include tests (where appropriate)
   - [ ] The changes are backwards compatible (where possible)
   - [ ] The changes have the correct semantic version reference in the Changelog
   - [ ] The changes are written in good English
   - [ ] The changes are written as simply as possible
   - [ ] The changes do not include dead code
   - [ ] The changes remove all dead code that they introduce
   ```

   - The content in the text area will be persisted as you continue with the review

3. Review the pull request with each of the checkboxes in mind

   - Remember to comment on good things as well as things that should change

4. After reviewing all of the changes, replace the leading placeholder with a sincere, positive comment and check each checkbox that is valid

   - To check a checkbox while editing the text, replace the space inside the square brackets with an `x` (i.e. `[ ]` => `[x]`)

5. Select the `Request changes` option if any of the checkboxes are not checked (otherwise select the `Approve` option) and submit the review

6. Repeat steps 2-5 above as additional changes are committed until all of the checkboxes are checked and the pull request is approved

7. Merge the pull request

   - Use the `Squash and merge` option
   - Update the commit message title to match the project commit title standard (if necessary)
     - `#<ISSUE_NUMBER>: <VERB> <TINY_SUMMARY>`
   - Clear the contents of the commit message `optional extended description`

8. Update the issue labels and milestone

   - Remove the current status label(s)
   - Add the `Status: Closed` label
   - Add the issue to the `Unreleased` milestone
