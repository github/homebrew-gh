class Gh < Formula
  desc "GitHub CLI"
  head "https://github.com/github/gh-cli.git", :branch => "prototype"

  depends_on "go" => :build

  def install
    system "make"
    bin.install "bin/gh"
    (bash_completion/"gh.sh").write `#{bin}/gh completion -s bash`
    (zsh_completion/"_gh").write `#{bin}/gh completion -s zsh`
  end

  test do
    help_text = shell_output("#{bin}/gh --help")
    assert_includes help_text, "Usage:"
  end
end
