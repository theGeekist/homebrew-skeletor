class Skeletor < Formula
  desc "Two-way scaffolding CLI (apply + snapshot)"
  homepage "https://github.com/theGeekist/skeletor"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theGeekist/skeletor/releases/download/v0.3.9/skeletor-macos-aarch64-apple-darwin.tar.gz"
      sha256 "51548f8b682cc6b7a121e80c44b318ec03a2d7ebbeccf33be243e0e5bc43519d"
    end
    on_intel do
      url "https://github.com/theGeekist/skeletor/releases/download/v0.3.9/skeletor-macos-x86_64-apple-darwin.tar.gz"
      sha256 "e542845397facd45af88327b9de066f15d122e39f23b758a88570aef3a5b047b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/theGeekist/skeletor/releases/download/v0.3.9/skeletor-ubuntu-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19e4e50f7254867013f18b63b16000f2811a88b5155256c8fb4e146341614226"
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
