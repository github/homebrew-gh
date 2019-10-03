class Gh < Formula
  desc "GitHub CLI"
  head "https://github.com/github/github-cli-prototype.git", :branch => "prototype"

  depends_on "go" => :build

  def install
    system "go", "build", "-mod=vendor", "-o", "gh", "."
    bin.install "gh"
  end

  test do
    help_text = shell_output("#{bin}/gh --help")
    assert_includes help_text, "Usage:"
  end
end
