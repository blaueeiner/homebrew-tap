# Template for the Homebrew tap formula. The release workflow substitutes
# 1.0.0 and 69612559c9489bcd168ed6bef921c0e0e2665aebb2bd4eb9444715ff8d2877be and pushes the result to blaueeiner/homebrew-tap.
class Typechar < Formula
  desc "Type any Unicode string on macOS, regardless of keyboard layout"
  homepage "https://github.com/blaueeiner/typechar"
  url "https://github.com/blaueeiner/typechar/releases/download/v1.0.0/typechar-1.0.0-macos-universal.tar.gz"
  sha256 "69612559c9489bcd168ed6bef921c0e0e2665aebb2bd4eb9444715ff8d2877be"
  version "1.0.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "typechar"
  end

  test do
    assert_match "typechar #{version}", shell_output("#{bin}/typechar --version")
  end
end
