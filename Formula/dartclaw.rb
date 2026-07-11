class Dartclaw < Formula
  desc "Security-conscious AI agent runtime"
  homepage "https://github.com/DartClaw/dartclaw"
  version "0.20.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-macos-arm64.tar.gz"
      sha256 "3406d1ee57f815aa2e445ac255c96e362e65e2c6b87675ae5676a441baf476bf"
    end

    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-macos-x64.tar.gz"
      sha256 "c85d0bf7a41863ff4f72aeb36048e9f16a550b2df46d762a8a32ad097f5a1bd2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-linux-x64.tar.gz"
      sha256 "ae6e111b2d5c7011fc259c1cb15c6bc3c58afb98e6f902a15b771e98532da1eb"
    end

    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-v#{version}-linux-arm64.tar.gz"
      sha256 "46a972a4669c1f6480ce96782b8d689f2e08526b236a64365b7f93c478e86dad"
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
