class Workmem < Formula
  desc "Local-first memory MCP server: SQLite-backed knowledge graph for AI"
  homepage "https://github.com/marlian/workmem"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/marlian/workmem/releases/download/v0.3.0/workmem-darwin-arm64-v0.3.0.tar.gz"
      sha256 "4c6e3edfa01197b863d7154f6991702080fa86c23cadbefc04f1bba87558e917"
    end
    on_intel do
      url "https://github.com/marlian/workmem/releases/download/v0.3.0/workmem-darwin-amd64-v0.3.0.tar.gz"
      sha256 "f597f163edfa174f2e33a4256c138e69817a94b31440d5c87df6895467f69a58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/marlian/workmem/releases/download/v0.3.0/workmem-linux-arm64-v0.3.0.tar.gz"
      sha256 "cbf5390a586303f36e7b720c55e8964fc1d7080c761a5a37d8876d3f2294ef56"
    end
    on_intel do
      url "https://github.com/marlian/workmem/releases/download/v0.3.0/workmem-linux-amd64-v0.3.0.tar.gz"
      sha256 "134286242a0f6304ee041928e17fb86474a14da9808228f6bbd4d57a8548edad"
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
