class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.8.5"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.5/calctokens-macos-arm64",
      tag: "v0.8.5"
    sha256 "81168cfd990b4742b66088df98dca8da51e0a85a0af7c4f0cf6cb2f479915218"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.5/calctokens-linux",
      tag: "v0.8.5"
    sha256 "0017936199247917cf7124c3fa89cf0e44e991cd8b49d23a91f70ad5f409a905"
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
