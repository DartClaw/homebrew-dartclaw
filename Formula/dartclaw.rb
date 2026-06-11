class Dartclaw < Formula
  desc "Security-conscious AI agent runtime"
  homepage "https://github.com/DartClaw/dartclaw"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-macos-arm64.tar.gz"
      sha256 "c4a7384f7d2e8d941a5f77336979b495d2f4bae45233ef314c07b43d2f7e6083"
    end

    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-macos-x64.tar.gz"
      sha256 "5ff6d98f9c9aa92bd7dbf107569a1ed92c7542080f3f0ddf002188423f8a89ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-linux-x64.tar.gz"
      sha256 "e3fe7ab2b6204779fff2a5dc571b09081a07bdfbe1711626ffe1daf202d072f5"
    end

    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-linux-arm64.tar.gz"
      sha256 "e740c68f1575b4c0c73be34cabe86950c8850209ebe337e9b8d1b252db0e9455"
    end
  end

  def install
    bin.install "bin/dartclaw"
    pkgshare.install Dir["share/dartclaw/*"]
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/dartclaw --version").strip
  end
end
