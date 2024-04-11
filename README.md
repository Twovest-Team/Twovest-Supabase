# Twovest-Supabase Project


## Overview
Twovest-Supabase is a project that showcases the integration of Supabase, an open-source alternative to Firebase, for developing scalable and efficient web applications.

## Installation
To set up Twovest-Supabase on your local machine, follow these steps:

1. **Install Supabase CLI**: Begin by installing the Supabase Command Line Interface (CLI) from [here](https://supabase.com/docs/guides/cli/getting-started).
2. **Install Docker Desktop**: Docker Desktop is required for containerization. Download and install it from [here](https://www.docker.com/products/docker-desktop/).
3. **Initialize Docker Desktop**: After installation, create an account and initialize Docker Desktop. Keep the software running.
4. **Create a Folder**: Create a folder on your local machine where you want to set up the project.
5. **Initialize Git**: If you haven't already, initialize a Git repository in your project folder by running `git init`.
6. **Set Remote Origin**: Add the Twovest-Supabase repository as the remote origin using the command `git remote add origin https://github.com/Twovest-Team/Twovest-Supabase.git`.
7. **Go to Dev Branch**: Run `git checkout dev`.
8. **Pull Repository**: Pull the contents of the repository into your local folder with the command `git pull origin dev`.
9. **Navigate to Supabase Directory**: Move into the `supabase` directory of the cloned repository using the command `cd supabase`.
10. **Start Supabase**: Run the command `supabase start`. Please note that the initial startup may take some time.
11. **Access Supabase Studio**: Once Supabase is up and running, you can access Supabase Studio by navigating to [http://127.0.0.1:54323](http://127.0.0.1:54323) in your web browser.
12. **Verification**: Verify that all necessary tables and default dummy data are present in Supabase Studio.
13. **Link to hosted Supabase**: On the terminal, run `supabase link --project-ref ********************` to link to the remote development Supabase project (Ask Vasco the password).

## License
This project is licensed under the MIT License. For details, see the [LICENSE](LICENSE) file.
