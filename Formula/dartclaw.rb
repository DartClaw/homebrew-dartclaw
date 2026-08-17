class Dartclaw < Formula
  desc "Security-conscious AI agent runtime"
  homepage "https://github.com/DartClaw/dartclaw"
  version "0.24.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-macos-arm64.tar.gz"
      sha256 "49568b94f8a1be757419442e1ebd1eec60312d3f849a1060a4564071b1d34d1c"
    end

    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-macos-x64.tar.gz"
      sha256 "d3370ba42e4a44d576de4d15437dc21c40389401c550c7b6a3dcaafbf15b58d9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-linux-x64.tar.gz"
      sha256 "b1c1607e86c580a7d4fd5cefe2064368b2a94699b356a6a5ad9c2adf33a9de55"
    end

    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-linux-arm64.tar.gz"
      sha256 "88a398b0a1bf67fdff5c388fba9f095985530436fcfc0f3b88c45e89bfb4fc59"
    end
  end

  def install
    bin.install "bin/dartclaw"
    lib.install Dir["lib/*"]
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/dartclaw --version").strip
  end
end
