class Gh < Formula
  desc "GitHub CLI"
  homepage "https://github.com/github/gh-cli"
  version "0.2.0"

  if OS.mac?
    url "https://github.com/github/homebrew-gh/releases/download/v0.2.0/gh_0.2.0_macOS_amd64.tar.gz"
    sha256 "2bc789dc11f9cb780cfefc51756f0645f124cef489609f2c9c69ab3a73570c97"
  elsif OS.linux?
    # TODO
  end

  head do
    url "https://github.com/github/gh-cli.git", :branch => "prototype"
    depends_on "go"
  end

  bottle :unneeded

  def install
    system "make" if build.head?
    bin.install File.exist?("bin/gh") ? "bin/gh" : "gh"
    (bash_completion/"gh.sh").write `#{bin}/gh completion -s bash`
    (zsh_completion/"_gh").write `#{bin}/gh completion -s zsh`
  end

  test do
    help_text = shell_output("#{bin}/gh --help")
    assert_includes help_text, "Usage:"
  end
end
