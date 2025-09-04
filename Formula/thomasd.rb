class Thomasd < Formula
  desc "ThomasD CLI"
  homepage "https://github.com/dopalos/thomasd"
  license "MIT"
  version "0.1.20"

  on_macos do
    on_intel do
      url "https://github.com/dopalos/thomasd/releases/download/v0.1.20/thomasd_v0.1.20_darwin_amd64.tar.gz"
      sha256 "45cf4261c7d4d919b2aa1576a8965176cbb6ab801b77503151f431995b8862f7"
    end
    on_arm do
      url "https://github.com/dopalos/thomasd/releases/download/v0.1.20/thomasd_v0.1.20_darwin_arm64.tar.gz"
      sha256 "49205f854c9011427ac295b3fa790005a6f07180b82d3b28058153014d68461a"
    end
  end

  def install
    bin.install "thomasd"
  end

  test do
    system "#{bin}/thomasd", "--version"
  end
end
