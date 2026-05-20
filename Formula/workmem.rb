class Workmem < Formula
  desc "Local-first memory MCP server: SQLite-backed knowledge graph for AI"
  homepage "https://github.com/marlian/workmem"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/marlian/workmem/releases/download/v0.4.1/workmem-darwin-arm64-v0.4.1.tar.gz"
      sha256 "cafc1c82fe02ed05f12834d893642b7efcfe42e0bdc15504bfbc714d4f3007e7"
    end
    on_intel do
      url "https://github.com/marlian/workmem/releases/download/v0.4.1/workmem-darwin-amd64-v0.4.1.tar.gz"
      sha256 "1324cbe0a8fdb1e91a50a7414be4adbe9675f3ec07c9b8b14c34c90ec603eecc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/marlian/workmem/releases/download/v0.4.1/workmem-linux-arm64-v0.4.1.tar.gz"
      sha256 "31640f91bd6eb9e92d04d08462e50a8b9f3e964641ac010416712bc187964c86"
    end
    on_intel do
      url "https://github.com/marlian/workmem/releases/download/v0.4.1/workmem-linux-amd64-v0.4.1.tar.gz"
      sha256 "beb3246cdaf8376e707b50ae18e48005d510ccf25845e07e2dbbdd890dc16e0c"
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
