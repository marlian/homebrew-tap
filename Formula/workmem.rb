class Workmem < Formula
  desc "Local-first memory MCP server: SQLite-backed knowledge graph for AI"
  homepage "https://github.com/marlian/workmem"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/marlian/workmem/releases/download/v0.2.0/workmem-darwin-arm64-v0.2.0.tar.gz"
      sha256 "2a56cc9598051fab14dbf5050999b41a39c4f75ef8b9b17a52a6560067cecd49"
    end
    on_intel do
      url "https://github.com/marlian/workmem/releases/download/v0.2.0/workmem-darwin-amd64-v0.2.0.tar.gz"
      sha256 "87b1d47e2fdfd1279923435fe189a5a02e0ed7a7332a55bac5904f8715f471e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/marlian/workmem/releases/download/v0.2.0/workmem-linux-arm64-v0.2.0.tar.gz"
      sha256 "ddd2e1028116bed9635aadeb14d0e0e79c5357b5d3c376220dff2f72d542f6d0"
    end
    on_intel do
      url "https://github.com/marlian/workmem/releases/download/v0.2.0/workmem-linux-amd64-v0.2.0.tar.gz"
      sha256 "543f62fbf0a096b262f2a0a3f072a4c67ce53687e53653fcb75013c33be67d6d"
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
