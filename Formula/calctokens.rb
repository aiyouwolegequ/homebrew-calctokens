class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "1.0.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.2/calctokens-macos-arm64",
      tag: "v1.0.2"
    sha256 "ee8d3021ae5f3c9c02f7ae787b887acb930ce9f9364d836f5ed2d259c17e34fc"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.2/calctokens-linux-x86_64",
      tag: "v1.0.2"
    sha256 "56ab829211dbcc8d2ff6a1237218ff99e59918a3e4645e9b888ef19bb65d398c"
  end

  def install
    target = bin/"calctokens"
    bin.mkpath
    rm_f target
    FileUtils.cp(cached_download, target)
    chmod(0755, target)
  end

  test do
    system "#{bin}/calctokens", "--help"
  end
end
