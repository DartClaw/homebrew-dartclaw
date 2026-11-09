class DartclawWorkflow < Formula
  desc "Workflow-only DartClaw runner (standalone, no server)"
  homepage "https://github.com/DartClaw/dartclaw"
  version "0.28.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-workflow-v#{version}-macos-arm64.tar.gz"
      sha256 "1b1e7719fba91dafb318be5f015e0db9880412e9b2f3b7364959945ad1dc8086"
    end

    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-workflow-v#{version}-macos-x64.tar.gz"
      sha256 "0440b2efdf48bf733f0086e3d575f318ad2feaaca28730f30f0f4473474bdbed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-workflow-v#{version}-linux-x64.tar.gz"
      sha256 "cfdc5558c1cdf07887b6bbe8b90c108f62e533380bf64d9abd52715e964e3a79"
    end

    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-workflow-v#{version}-linux-arm64.tar.gz"
      sha256 "fe2d86ce1f80ecb731f51f39df3f833e5d7fd6ee9949227bc5d40ce11c8dae08"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dartclaw-workflow"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/dartclaw-workflow --version").strip
  end
end
