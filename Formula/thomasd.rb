class Thomasd < Formula
  desc "Thomas Chain daemon"
  homepage "https://github.com/dopalos/thomasd"
  version "0.1.24"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dopalos/thomasd/releases/download/v0.1.24/thomasd_v0.1.24_darwin_arm64.tar.gz"
      sha256 "d7655cd87b7d3174d2c367a919f52497b48d750088d88163a16b8224bb72a384"
    else
      url "https://github.com/dopalos/thomasd/releases/download/v0.1.24/thomasd_v0.1.24_darwin_amd64.tar.gz"
      sha256 "5b1a07f45ec86c6de6e101fcdf8b79c2ac3bed287d868eb92e780c8636a195ad"
    end
  end

  def install
    bin.install "thomasd"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/thomasd -v")
  end
end