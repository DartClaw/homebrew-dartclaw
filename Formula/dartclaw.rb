class Dartclaw < Formula
  desc "Security-conscious AI agent runtime"
  homepage "https://github.com/DartClaw/dartclaw"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-macos-arm64.tar.gz"
      sha256 "3b2568ff83967b4b40b8458190194bbfe0edfefd1045ddb508dbfc728e95a394"
    end

    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-macos-x64.tar.gz"
      sha256 "3fbff6ab71af3d0c0ff25977d58d8ac2d79d78aa512e512a652d5b15bdfcc8fc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-linux-x64.tar.gz"
      sha256 "9d9ef9b2feb46da3969e6dc041f21404d9c65dd4727878a89527328d3a0fb170"
    end

    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-linux-arm64.tar.gz"
      sha256 "d6756e45359d1e9e969191b9c25f3754fcb987e5a8e9445b0693640250d15725"
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
