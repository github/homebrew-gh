class Gh < Formula
  desc "GitHub CLI"
  homepage "https://github.com/github/gh-cli"
  version "0.2.3"

  if OS.mac?
    url "https://github.com/github/homebrew-gh/releases/download/v0.2.3/gh_0.2.3_macOS_amd64.tar.gz"
    sha256 "1f00c71a19832f5c226bd0ed6af9424e3304a30cab28137e15dab69838fa08cd"
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
