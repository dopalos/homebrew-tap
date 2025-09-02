class Thomasd < Formula
  desc "Thomas Chain daemon"
  homepage "https://github.com/dopalos/thomasd"
  version "v0.1.19"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/dopalos/thomasd/releases/download/v0.1.19/thomasd_v0.1.19_darwin_arm64.tar.gz"
      sha256 "d6e89cf1f0bd49b7b5670a62f0389a3bee4e3565c6625c56a59cc1f89fa433f1"
    end
    on_intel do
      url "https://github.com/dopalos/thomasd/releases/download/v0.1.19/thomasd_v0.1.19_darwin_amd64.tar.gz"
      sha256 "26688e29c3a2cfc281d0728a8287c0e59e095a415cbf69fb9e8cab90385906de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dopalos/thomasd/releases/download/v0.1.19/thomasd_v0.1.19_linux_arm64.tar.gz"
      sha256 "faf5bc0c7dc398611a5130594d519612fa8cd3b53bdcd6ad8cfd66a8b781e14d"
    end
    on_intel do
      url "https://github.com/dopalos/thomasd/releases/download/v0.1.19/thomasd_v0.1.19_linux_amd64.tar.gz"
      sha256 "60603086470cf301166ca43f859acefc6d70ffd0cec3ccb51f74b9a607816820"
    end
  end

  def install
    bin.install "thomasd"
  end

  test do
    system "#{bin}/thomasd", "-version"
  end
end
