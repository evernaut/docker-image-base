# Local Environment Setup Process

1. Install git

   - Recommended installation methods:
     - Linux: install via a native package management tool (e.g. apt or yum)
     - MacOS: install via Xcode command line tools (`$ xcode-select --install`) or via downloading [Xcode from the Mac App Store](https://apps.apple.com/us/app/xcode/id497799835?mt=12 "Xcode Mac App Store Preview")
     - Windows: **Windows development is not supported by this project**
   - Confirm installation via the following command: `$ git --version`

2. [Install git lfs](https://github.com/git-lfs/git-lfs/wiki/Installation "Git LFS Installation Guide")

   - Confirm installation via the following command: `$ git lfs --version`

3. [Install Docker](https://docs.docker.com/install/ "Docker Installation Guide")

   - Confirm installation via the following command: `$ docker -v`

4. [Create a global .gitignore](https://docs.github.com/en/github/using-git/ignoring-files#configuring-ignored-files-for-all-repositories-on-your-computer "How to create a global .gitignore")

   - Note: It is bad practice to include operating system and IDE lines in a project's .gitignore _unless they are required by the project_. This project does not require a specific operating system nor IDE so ensure your global .gitignore includes lines for all files relevant to your [operating system(s) and IDE(s)](https://github.com/github/gitignore "GitHub example .gitignore files")

5. [Setup commit signature verification](https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification "Setup Commit Signature Verification")

6. Clone the repository

   ```sh
   git clone git@github.com:evernaut/docker-image-base.git
   ```

7. Change your current directory to the local clone of the repository

   ```sh
   cd docker-image-base
   ```

8. Build the Docker image

   ```sh
   docker build --no-cache -t evernaut/base:1.0.0 .
   ```

9. Install the npm dependencies

   ```sh
   docker run -t --mount src="$(pwd)",target="/opt/evernaut",type="bind" evernaut/base:1.0.0 bash -c 'npm ci --unsafe-perm'
   ```
