class Workmem < Formula
  desc "Local-first memory MCP server: SQLite-backed knowledge graph for AI"
  homepage "https://github.com/marlian/workmem"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/marlian/workmem/releases/download/v0.4.0/workmem-darwin-arm64-v0.4.0.tar.gz"
      sha256 "9bbf18f7f78aa72835246eb12daa6b7e63bef7e47bd345a0fd328236e3371932"
    end
    on_intel do
      url "https://github.com/marlian/workmem/releases/download/v0.4.0/workmem-darwin-amd64-v0.4.0.tar.gz"
      sha256 "ad16e3af92e2fcb28c9dea28679c578fe02ccca1bca9863f829a933572ff5dec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/marlian/workmem/releases/download/v0.4.0/workmem-linux-arm64-v0.4.0.tar.gz"
      sha256 "87079fee3d994e765b03d14acb352c16497daeabb3373fb8c5acd437c81d74bd"
    end
    on_intel do
      url "https://github.com/marlian/workmem/releases/download/v0.4.0/workmem-linux-amd64-v0.4.0.tar.gz"
      sha256 "b2fcf2f34c3f2df9749ed6be5c53945e6f5ab9bb5009278ca78fe1dffa269b51"
    end
  end

  # Tells `brew bump-formula` where to look for newer versions so the
  # formula can be auto-updated when upstream tags a new release.
  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "workmem"
  end

  test do
    # Verifies the binary is executable and reports the version we just
    # installed — if ldflags injection or archive packaging regresses
    # upstream, `brew test workmem` will catch it.
    assert_match "workmem v#{version}", shell_output("#{bin}/workmem version")
  end
end
