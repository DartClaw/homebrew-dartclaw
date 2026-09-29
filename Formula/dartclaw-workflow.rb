class DartclawWorkflow < Formula
  desc "Workflow-only DartClaw runner (standalone, no server)"
  homepage "https://github.com/DartClaw/dartclaw"
  version "0.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-workflow-v#{version}-macos-arm64.tar.gz"
      sha256 "6d69570d2fd5a45e14b3a20b7579ee1a5151ea7c693936f9d909248717e3eeb4"
    end

    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-workflow-v#{version}-macos-x64.tar.gz"
      sha256 "97e179f2b98e2055f204c04a06e335c05fbec1e5705fec3bf96730e8b156419b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-workflow-v#{version}-linux-x64.tar.gz"
      sha256 "ec53013529435dbc4b375f7ae343d5e476902bb6beb50106865f01e3c1e93392"
    end

    on_arm do
      url "https://github.com/DartClaw/dartclaw/releases/download/v#{version}/dartclaw-workflow-v#{version}-linux-arm64.tar.gz"
      sha256 "5d9da6395983b2c36dec5a82b3c54a7e337b845585cf3731287ae916a9f6d7c0"
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
