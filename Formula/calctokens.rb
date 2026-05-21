class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.8.6"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.6/calctokens-macos-arm64",
      tag: "v0.8.6"
    sha256 "4a9e8d147fe7fd17c78daf8a6b490231d1a49013625a8022269b0ce267ae84b1"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.6/calctokens-linux",
      tag: "v0.8.6"
    sha256 "d6597de5cbaddbdcef97cd31b1b6721ae9ed54b4007482b6a626ff3c9d750256"
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
