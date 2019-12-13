class Gh < Formula
  desc "GitHub CLI"
  homepage "https://github.com/github/gh-cli"
  version "0.3.5"

  if OS.mac?
    url "https://github.com/github/homebrew-gh/releases/download/v0.3.5/gh_0.3.5_macOS_amd64.tar.gz"
    sha256 "41f451b19ec1ff674e744cdc9eb7c1281a04831f0a7591a3a95afd14eb199f01"
  elsif OS.linux?
    # TODO
  end

  head do
    url "https://github.com/github/gh-cli.git", :branch => "master"
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
