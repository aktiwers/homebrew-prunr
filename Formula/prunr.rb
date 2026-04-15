# Homebrew formula for Prunr — local AI background removal
#
# Install:
#   brew tap aktiwers/prunr
#   brew install prunr
#
# Or in one command:
#   brew install aktiwers/prunr/prunr

class Prunr < Formula
  desc "Local AI background removal — no cloud, no API keys"
  homepage "https://prunr.io"
  version "0.4.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aktiwers/prunr/releases/download/v#{version}/prunr-macos-aarch64.tar.gz"
      sha256 "39904c12bbb9e1456cadb7ee40745f28f15fe0c73184c2cfdb07dc2dad1bf5a2"
    end
  end

  def install
    bin.install "prunr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prunr --version")
  end
end
