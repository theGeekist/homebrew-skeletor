class Skeletor < Formula
  desc "Your project description here"
  homepage "https://github.com/jasonnathan/skeletor"
  url "https://github.com/jasonnathan/skeletor/releases/download/v2.0.1/skeletor.tar.gz" # link to your tar.gz binary
  sha256 "5ce7b4047a317fef8f424850e13b736efd32f38a7b3de59843647813d24a4a69"  # Replace this with the actual SHA256 checksum of your tar.gz file
  license "MIT"

  def install
    bin.install "skeletor"
  end

  test do
    system "#{bin}/skeletor", "--version"
  end
end
