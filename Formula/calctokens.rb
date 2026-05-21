class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.8.8"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.8/calctokens-macos-arm64",
      tag: "v0.8.8"
    sha256 "c336139f289cadebdaab99abf7e6a29297238d9328d3acda5b0403a0c6b0b1ad"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.8/calctokens-linux",
      tag: "v0.8.8"
    sha256 "0be18cacc4eedf8df1362f7175810111fac10e4f5a113accacc8c3c056d2d445"
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
