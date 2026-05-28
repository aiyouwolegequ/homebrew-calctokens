class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.9.5"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.5/calctokens-macos-arm64",
      tag: "v0.9.5"
    sha256 "a70bfac4db6b3baae95e1804c06e9a9954e38a2b8c4c9cd827ccb8c06adc39b3"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.5/calctokens",
      tag: "v0.9.5"
    sha256 "210230749d7bc92bc03fb09ce6deaebce668d229ba77890df3f52a91df1c8483"
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
