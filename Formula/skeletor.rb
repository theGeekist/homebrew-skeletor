class Skeletor < Formula
  desc "Two-way scaffolding CLI (apply + snapshot)"
  homepage "https://github.com/theGeekist/skeletor"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theGeekist/skeletor/releases/download/v0.3.14/skeletor-macos-aarch64-apple-darwin.tar.gz"
      sha256 "c38b0c50e3b62186ad455b1162b16b64da7e9b8a6815c3ab2027c277350da518"
    end
    on_intel do
      url "https://github.com/theGeekist/skeletor/releases/download/v0.3.14/skeletor-macos-x86_64-apple-darwin.tar.gz"
      sha256 "1309d7777ba089dbe2294def2f131e328171de7537d3cffdc463b336d7d7c80b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/theGeekist/skeletor/releases/download/v0.3.14/skeletor-ubuntu-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f6390f32ec2c89131af4fe05b3af7fcb7de5c29a36a110fe9f4b39eea3d35633"
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
