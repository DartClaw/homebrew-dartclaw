class Dartclaw < Formula
  desc "Security-conscious AI agent runtime"
  homepage "https://github.com/DartClaw/dartclaw"
  version "0.28.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-macos-arm64.tar.gz"
      sha256 "f9033b8416ba1a5e861ca0f5d0b2ec0cca6bb0d69ddceb04e97a46c7bdcafe8b"
    end

    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-macos-x64.tar.gz"
      sha256 "6e3f675137e25c3b911923c8597bff3cadcdc758c5d013a43a9b648c7ed3c9b2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-linux-x64.tar.gz"
      sha256 "60a9ca20f9c3ee2068a93a6d0bf26bdf3aba8a7461e804a9577d69a77c9a5c7f"
    end

    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-linux-arm64.tar.gz"
      sha256 "acd45a98f757299f83c359e845216ce81363163a25fe3cd9298fad97fa77de31"
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
