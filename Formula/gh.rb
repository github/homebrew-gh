class Gh < Formula
  desc "GitHub CLI"
  url "https://github.com/github/homebrew-gh/releases/download/v0.0.195/gh-cli_0.0.195_darwin_amd64.tar.gz"
  sha256 "82f8c50415d14851d3fb1a800ffd047f181880deb5450acd67bc7594fa2a19ea"

  bottle :unneeded

  def install
    bin.install "gh"
  end

  test do
    help_text = shell_output("#{bin}/gh --help")
    assert_includes help_text, "Usage:"
  end
end
