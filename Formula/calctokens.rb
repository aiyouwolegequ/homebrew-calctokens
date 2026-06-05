class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.5/calctokens-macos-arm64",
      tag: "v1.0.5"
    sha256 "9d201780b809f4fa8e26e1f734f6f55281d8fee1a2af209b6db88e73a997c844"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.5/calctokens-linux-x86_64",
      tag: "v1.0.5"
    sha256 "4e379ae9c06ab9f90e8bbac5705fdf38547ef132371878a405c73982f54b90b4"
  end

  def install
    target = bin/"calctokens"
    bin.mkpath
    rm target if target.exist?
    cp cached_download, target
    chmod(0755, target)
  end

  test do
    system "#{bin}/calctokens", "--help"
  end
end
