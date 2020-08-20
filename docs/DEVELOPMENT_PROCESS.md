# Development Process

See [Contributing](./CONTRIBUTING.md "Contributing") for high level information on contributing.

## Find an Open Issue

All issues that are open for contribution can be found via the [Status: Open](../../../labels/Status%3A%20Open "'Status: Open' Issues") label.

- See the [Issue Triage Process](./ISSUE_TRIAGE_PROCESS.md "Issue Triage Process") for more information on how issues are refined

## Work on an Open Issue

0. If you lack write access to the repository (e.g. all external contributors), fork the repository

1. Create a new branch to contain the changes related to the issue

   ```sh
   git checkout integration && git pull && git checkout -b issue/<ISSUE_NUMBER>
   ```

2. Create an empty commit

   ```sh
   git commit --allow-empty -m "#<ISSUE_NUMBER>: <ISSUE_TITLE>"
   ```

3. Push the empty commit

   ```sh
   git push --set-upstream origin issue/<ISSUE_NUMBER>
   ```

4. [Create a draft pull request](../../../compare "Create a Draft Pull Request")

   - Set the **base branch** to `integration`
   - Set the **compare branch** to the issue branch created in step 1 above
   - Set the pull request **title** to `#<ISSUE_NUMBER>: <ISSUE_TITLE>`
   - Update the pull request **description** placeholder content accordingly
   - Use the dropdown to create a **draft** pull request

5. Work on the issue

   - Commit and push as necessary
   - Ensure all GitHub actions pass
   - Ensure there are no merge conflicts
   - Self review the pull request by adhering to the [Code Review Process](./CODE_REVIEW_PROCESS.md "Code Review Process")

6. Mark the pull request as **ready for review**

   - The pull request will be **converted to draft** if any changes have been requested

7. Repeat steps 5 and 6 above until the pull request is approved and merged

## Helpful Commands

- Build the image

  ```sh
  docker build --no-cache -t evernaut/base:0.0.0 .
  ```

- Run a command on the image

  ```sh
  docker run -t --mount src="$(pwd)",target="/opt/evernaut",type="bind" evernaut/base:0.0.0 bash -c '<COMMAND>'
  ```

- Run the image in interactive mode

  ```sh
  docker run -it --mount src="$(pwd)",target="/opt/evernaut",type="bind" evernaut/base:0.0.0 bash
  ```

- Install the npm dependencies

  ```sh
  docker run -t --mount src="$(pwd)",target="/opt/evernaut",type="bind" evernaut/base:0.0.0 bash -c 'npm ci --unsafe-perm'
  ```

- Lint the project

  ```sh
  docker run -t --mount src="$(pwd)",target="/opt/evernaut",type="bind" evernaut/base:0.0.0 bash -c 'npm run lint'
  ```

### Version Information

- Ubuntu

  ```sh
  docker run -t evernaut/base:0.0.0 bash -c 'cat /etc/os-release'
  ```

- Node.js

  ```sh
  docker run -t evernaut/base:0.0.0 bash -c 'node -v'
  ```
