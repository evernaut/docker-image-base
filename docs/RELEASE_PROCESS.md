# Release Process

1. Determine the release semantic version

   - Reference the unreleased section of the [Changelog](../CHANGELOG.md "Changelog") to determine the semantic version impact of what changed since the last release

2. [Create a release milestone](../../../milestones/new "Create a Release Milestone")

3. [Create a release issue](../../../issues/new/choose "Create a Release Issue")

   - Ensure the release issue is linked to the release milestone created in step 2 above

4. Migrate all issues from the [Unreleased milestone](../../../milestone/1 "Unreleased Milestone") to the release milestone created in step 2 above

   - Ensure each issue is recorded in the [Changelog](../CHANGELOG.md "Changelog")

5. Create a new branch to contain the changes related to the release process

   ```sh
   git checkout integration && git pull && git checkout -b issue/<RELEASE_ISSUE_NUMBER>
   ```

6. Update the [Changelog](../CHANGELOG.md "Changelog")

   - Update the unreleased section to contain the release link and date
     - Refer to the template at the top of the [Changelog](../CHANGELOG.md "Changelog") for the correct format
   - Delete sub-sections that do not contain any changes
   - Create a new unreleased section
     - Copy the contents of the template at the top of the [Changelog](../CHANGELOG.md "Changelog") and paste it below the template
     - Change the heading to `## Unreleased`
     - Remove the release date

7. Update the version in the following files:

   - [Readme](../README.md "Readme")
   - [Local Environment Setup Process](./LOCAL_ENVIRONMENT_SETUP_PROCESS.md "Local Environment Setup Process")
   - [Development Process](./DEVELOPMENT_PROCESS.md "Development Process")
   - [package.json](../package.json "package.json")
   - [package-lock.json](../package-lock.json "package-lock.json")
   - [pull-request.yaml](../.github/workflows/pull-request.yaml "pull-request.yaml")
   - [Docker Hub Image Readme](https://hub.docker.com/repository/docker/evernaut/base/general "Docker Hub Image Readme")

8. Stage, commit and push all changes

   ```sh
   git add -A && git commit -m "#<RELEASE_ISSUE_NUMBER>: Release <VERSION>" && git push --set-upstream origin issue/<RELEASE_ISSUE_NUMBER>
   ```

9. [Create a pull request](../../../compare "Create a Pull Request")

   - Set the **base branch** to `integration`
   - Set the **compare branch** to the release branch created in step 5 above
   - Set the pull request **title** to `#<RELEASE_ISSUE_NUMBER>: Release <VERSION>`
   - Update the pull request **description** placeholder content accordingly
   - If necessary, make changes to pass all GitHub actions

10. Resolve merge conflicts and update the release date in the [Changelog](../CHANGELOG.md "Changelog") until the pull request is approved and merged

    - See step 4 above to migrate any new issues to the release milestone
    - If the semantic version needs to change based on newly merged commits, repeat the steps above and update accordingly

11. Merge the pull request

    - Use the `Squash and merge` option
    - Clear the contents of the `optional extended description`

12. Update the issue status label

    - Add the `Status: Closed` label and remove all other status labels

13. [Create a release](../../../releases/new "Create a Release") on GitHub

    - Set the **tag version** and **Release title** to the release version
    - Set the **target** to the commit created in step 10 above
    - Set the **description** to the contents of the release section in the [Changelog](../CHANGELOG.md "Changelog")
      - Do not include the release link and date
      - Update all markdown headings to be two levels higher (e.g. `###` => `#`)

14. Check out the release tag

    ```sh
    git pull && git checkout <VERSION>
    ```

15. Build the Docker image

    ```sh
    docker build --no-cache -t evernaut/base:<VERSION> .
    ```

16. Log in to Docker Hub

    ```sh
    docker login
    ```

17. Push the Docker image

    ```sh
    docker push evernaut/base:<VERSION>
    ```
