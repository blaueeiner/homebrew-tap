# Template for the Homebrew tap formula. The release workflow substitutes
# 0.1.0 and 6ae0a7118d8b7082f5a418e81ea47ef34143e70b9183cf9009c832d04722db91 and pushes the result to blaueeiner/homebrew-tap.
class Typechar < Formula
  desc "Type any Unicode string on macOS, regardless of keyboard layout"
  homepage "https://github.com/blaueeiner/typechar"
  url "https://github.com/blaueeiner/typechar/releases/download/v0.1.0/typechar-0.1.0-macos-universal.tar.gz"
  sha256 "6ae0a7118d8b7082f5a418e81ea47ef34143e70b9183cf9009c832d04722db91"
  version "0.1.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "typechar"
  end

  test do
    assert_match "typechar #{version}", shell_output("#{bin}/typechar --version")
  end
end
