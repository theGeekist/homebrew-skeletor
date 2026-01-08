class Skeletor < Formula
  desc "Two-way scaffolding CLI (apply + snapshot)"
  homepage "https://github.com/theGeekist/skeletor"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theGeekist/skeletor/releases/download/v0.3.10/skeletor-macos-aarch64-apple-darwin.tar.gz"
      sha256 "95a0e40ff0a17d53658a9072b2a7d1871f9f21dd381a30531da6b4fea40408b5"
    end
    on_intel do
      url "https://github.com/theGeekist/skeletor/releases/download/v0.3.10/skeletor-macos-x86_64-apple-darwin.tar.gz"
      sha256 "2a4cc06cf4bf8584d735405b511227dd5b5fe40e0054da215f5598644885cbf5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/theGeekist/skeletor/releases/download/v0.3.10/skeletor-ubuntu-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "61883a9f020703c90b41e341753b5d653daa03bbaa2c8c029c7540bfd0e899ac"
    end
  end

  def install
    bin.install "skeletor"
  end

  test do
    assert_match "skeletor", shell_output("#{bin}/skeletor --help")
  end

  livecheck do
    url :stable
    strategy :github_latest
  end
end
