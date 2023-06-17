resource "vercel_project" "dev" {
  name = "vercel-multi-branch-deployment-dev"

  install_command  = "yarn install"
  build_command    = "yarn build"
  output_directory = ".vitepress/dist"

  environment = [
    {
      target = ["production", "preview", "development"]
      key    = "TEST_KEY"
      value  = "FOO"
    }
  ]
}

resource "vercel_project" "master" {
  name = "vercel-multi-branch-deployment-master"

  install_command  = "yarn install"
  build_command    = "yarn build"
  output_directory = ".vitepress/dist"

  environment = [
    {
      target = ["production", "preview", "development"]
      key    = "TEST_KEY"
      value  = "FOO"
    }
  ]
}
