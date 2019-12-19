class Gh < Formula
  desc "GitHub CLI"
  homepage "https://github.com/github/gh-cli"
  version "9.9.10"

  if OS.mac?
    url "https://github.com/probablycorey/homebrew-gghh/releases/download/v9.9.10/gh_9.9.10_macOS_amd64.tar.gz"
    sha256 "e5448c4ac65af9ca82eb872d4c3d6e2f2266018f7409abb3725863c096629e83"
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
