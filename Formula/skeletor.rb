class Skeletor < Formula
  desc "Two-way scaffolding CLI (apply + snapshot)"
  homepage "https://github.com/theGeekist/skeletor"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theGeekist/skeletor/releases/download/v0.3.16/skeletor-macos-aarch64-apple-darwin.tar.gz"
      sha256 "2f31e98fb3a34843153cfe72cc5ec2731c65495c1b9d40bb66705b9d190c429e"
    end
    on_intel do
      url "https://github.com/theGeekist/skeletor/releases/download/v0.3.16/skeletor-macos-x86_64-apple-darwin.tar.gz"
      sha256 "3650f5b033ecf3a98d36a5c0f3c3d7f818f6c09629dfd953fb97216b6719f9a3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/theGeekist/skeletor/releases/download/v0.3.16/skeletor-ubuntu-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "961eac802a06cbaf7b9aaf5faef08c8b663884ecda05c2e838a2352f93ed4d50"
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
