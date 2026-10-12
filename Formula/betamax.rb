# Installs the prebuilt binaries attached to each Betamax GitHub Release.
# To update: change `version`, then each `sha256` (from the release's SHA256SUMS).
class Betamax < Formula
  desc "Terminal mental-math trainer"
  homepage "https://github.com/SahraouiAmine/Betamax"
  version "0.0.1"

  on_macos do
    url "https://github.com/SahraouiAmine/Betamax/releases/download/v#{version}/betamax-#{version}-macos-universal.tar.gz"
    sha256 "e90fd11100b9146e7de914c584f03e5ab380d4abe92fe4236d77dee1c5024afb"
  end

  on_linux do
    on_intel do
      url "https://github.com/SahraouiAmine/Betamax/releases/download/v#{version}/betamax-#{version}-linux-x86_64.tar.gz"
      sha256 "afdcba404cb37339e135c47d1fa3d6729ce0eb7a1e761ee6435453865e9187a6"
    end
  end

  def install
    bin.install "betamax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/betamax --version")
  end
end
