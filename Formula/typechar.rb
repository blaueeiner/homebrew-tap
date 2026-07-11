# Template for the Homebrew tap formula. The release workflow substitutes
# 1.1.0 and aae69fc2cb7603c5624c9448ab5a683fba477728a584736d43132eab1b225ddb and pushes the result to blaueeiner/homebrew-tap.
class Typechar < Formula
  desc "Type any Unicode string on macOS, regardless of keyboard layout"
  homepage "https://github.com/blaueeiner/typechar"
  url "https://github.com/blaueeiner/typechar/releases/download/v1.1.0/typechar-1.1.0-macos-universal.tar.gz"
  sha256 "aae69fc2cb7603c5624c9448ab5a683fba477728a584736d43132eab1b225ddb"
  version "1.1.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "typechar"
  end

  test do
    assert_match "typechar #{version}", shell_output("#{bin}/typechar --version")
  end
end
