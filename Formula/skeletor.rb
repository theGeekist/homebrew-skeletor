class Skeletor < Formula
  desc "Two-way scaffolding CLI (apply + snapshot)"
  homepage "https://github.com/theGeekist/skeletor"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theGeekist/skeletor/releases/download/v0.3.15/skeletor-macos-aarch64-apple-darwin.tar.gz"
      sha256 "e46fb6e6dde7980915efda482a1346b5d5c68f958a1ee1664e00e5bc1e9a3efa"
    end
    on_intel do
      url "https://github.com/theGeekist/skeletor/releases/download/v0.3.15/skeletor-macos-x86_64-apple-darwin.tar.gz"
      sha256 "a78da3591677c2d7a290a7e858f004b1efd4740d34d617a9745c9ce449e0164a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/theGeekist/skeletor/releases/download/v0.3.15/skeletor-ubuntu-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a874016da67db1cf2783aa68a4165f9e4597a64ac8afd07b415ca46ad942e6c"
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
