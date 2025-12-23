class Icopy < Formula
  desc "Tool to copy image and video files organized by date"
  homepage "https://github.com/evijayan2/icopy"
  version "1.0.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/evijayan2/icopy/releases/download/v1.0.0/icopy-darwin-amd64.tar.gz"
      sha256 "3242309c9676c0ad6341e0dcf0b9cb78abf7e17a163db95ad2182198c22f8398"
    elsif Hardware::CPU.arm?
      url "https://github.com/evijayan2/icopy/releases/download/v1.0.0/icopy-darwin-arm64.tar.gz"
      sha256 "e8bc622ace264b95287c46081234c12e996e67cd0af85f9e74e09626e92c7210"
    end
  end

  def install
    bin.install "icopy"
  end

  test do
    system "#{bin}/icopy", "-help"
  end
end
