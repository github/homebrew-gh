class Gh < Formula
  desc "GitHub CLI"
  homepage "https://github.com/github/gh-cli"
  version "0.3.1"

  if OS.mac?
    url "https://github.com/github/homebrew-gh/releases/download/v0.3.1/gh_0.3.1_macOS_amd64.tar.gz"
    sha256 "70ed1e629ac46aa53ae98622f31c32c1cfdfe5e43fc3e51a86e84f99ca4a76d8"
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
