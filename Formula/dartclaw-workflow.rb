class DartclawWorkflow < Formula
  desc "Workflow-only DartClaw runner (standalone, no server)"
  homepage "https://github.com/DartClaw/dartclaw"
  version "0.27.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-workflow-v#{version}-macos-arm64.tar.gz"
      sha256 "f97f9c3b81edf0a71b3ae79901b135c33413ccfdf911f07f8772bdc3bc284f6e"
    end

    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-workflow-v#{version}-macos-x64.tar.gz"
      sha256 "c51e54c40cebb848c7f1cbb3d305c46996fd9191563ca4dc5a0ec64ca7e09eb0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-workflow-v#{version}-linux-x64.tar.gz"
      sha256 "3799adaa1edf42f95de12a69f921d9ea92fc27e3c37083339a6099a53369ac5d"
    end

    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-workflow-v#{version}-linux-arm64.tar.gz"
      sha256 "cfe93dfc3e7041b4ffac2b5dec2117c2d188e88e978562dc9a83b76b6b441839"
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
