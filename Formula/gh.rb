class Gh < Formula
  desc "GitHub CLI"
  url "https://github.com/github/homebrew-gh/releases/download/v0.0.193/gh-cli_0.0.193_darwin_amd64.tar.gz"
  sha256 "f699ad4f7005dbb89395bf967d96fa621bb408379f618a7e7187a032e5a65ae1"

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