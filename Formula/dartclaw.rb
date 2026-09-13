class Dartclaw < Formula
  desc "Security-conscious AI agent runtime"
  homepage "https://github.com/DartClaw/dartclaw"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-macos-arm64.tar.gz"
      sha256 "4a267b6d97ab543446dd9ec4821aad2a20a809f0bb94bd059898ef8728665227"
    end

    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-macos-x64.tar.gz"
      sha256 "267411c560522fd2e8b5234667c0d372ff8d3c64cd8f2336f33dce48ca8ccfab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-linux-x64.tar.gz"
      sha256 "495eef1374b0cf96b1ec18f7a3817928ef0650e34f029b57ad1264edc72edbb1"
    end

    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-linux-arm64.tar.gz"
      sha256 "60adb2d1e5f4e09b91c10041a2f5df3008043992daf48f09031c63946248157e"
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
