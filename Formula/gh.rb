class Gh < Formula
  desc "GitHub CLI"
  url "https://github.com/github/homebrew-gh/releases/download/v0.0.1/gh-cli_0.0.1_darwin_amd64.tar.gz"
  sha256 "8890ac5a60b1cceab4186cb2cf3129b955cb4122ce9c37aa936015139be986b1"

  bottle :unneeded

  def install
    bin.install "gh"
    (bash_completion/"gh.sh").write `#{bin}/gh completion -s bash`
    (zsh_completion/"_gh").write `#{bin}/gh completion -s zsh`
  end

  test do
    help_text = shell_output("#{bin}/gh --help")
    assert_includes help_text, "Usage:"
  end
end