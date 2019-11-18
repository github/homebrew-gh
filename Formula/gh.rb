class Gh < Formula
  desc "GitHub CLI"
  homepage "https://github.com/github/gh-cli"
  version "0.2.1"

  if OS.mac?
    url "https://github.com/github/homebrew-gh/releases/download/v0.2.1/gh_0.2.1_macOS_amd64.tar.gz"
    sha256 "a2e7be17c876fea99969ffbc65274fdf03d687628c2164f76de93a41fc6f6ad7"
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
