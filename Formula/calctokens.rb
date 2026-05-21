class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.8.9"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.9/calctokens-macos-arm64",
      tag: "v0.8.9"
    sha256 "d6cbd571b5662441659bca19903486e8f59d811e5a46a8623c3b0b685a61529f"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.9/calctokens-linux",
      tag: "v0.8.9"
    sha256 "1fbe512d10cfc33e0e90904f34e7d8a2cdfe79e48f5ad28136578c93b994705a"
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
