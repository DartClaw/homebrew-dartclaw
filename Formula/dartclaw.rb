class Dartclaw < Formula
  desc "Security-conscious AI agent runtime"
  homepage "https://github.com/DartClaw/dartclaw"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-macos-arm64.tar.gz"
      sha256 "36359116aa34ae4eccc51c8489a67f60f69ec266dc32fc6d4b1d958d5bd5bdfb"
    end

    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-macos-x64.tar.gz"
      sha256 "f391ea0bdda16a18fc140773118b3524e164ce8920149fc21dca77d4f11dbc68"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-linux-x64.tar.gz"
      sha256 "fc7c6aebbf42236ed820b1f944da7b183f30847ea13b1972e6a6470d7ee870cd"
    end

    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-linux-arm64.tar.gz"
      sha256 "a79db9e94094f86d10249967245d3cdc809a626633dbe882ce8ef69f4a4c26c8"
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
