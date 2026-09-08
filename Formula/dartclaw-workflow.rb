class DartclawWorkflow < Formula
  desc "Workflow-only DartClaw runner (standalone, no server)"
  homepage "https://github.com/DartClaw/dartclaw"
  version "0.25.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-workflow-v#{version}-macos-arm64.tar.gz"
      sha256 "4929ca89c85afa9fe9014a566429ee0dae12ddc605b25553fc5065d19a168ed2"
    end

    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-workflow-v#{version}-macos-x64.tar.gz"
      sha256 "0c8e1c65a70beed82bc5e0b9834cfa4732c06769fac8449405687e925b1aa635"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-workflow-v#{version}-linux-x64.tar.gz"
      sha256 "f628c706f23c36beea1c0ccbaa86f684a926933de8fe2a83cc9eba8cad9d11cc"
    end

    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-workflow-v#{version}-linux-arm64.tar.gz"
      sha256 "5a469a098505c30c1c1bf29c715c61e9ab16481ef4af38caa46b2c5c7a904bd8"
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
