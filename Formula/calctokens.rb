class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.8.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.3/calctokens-macos-arm64",
      tag: "v0.8.3"
    sha256 "ad96c9621473b7906d9d75e190f12ebeef7f7d3e67017a6a2b7fd3d548b92ede"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.3/calctokens",
      tag: "v0.8.3"
    sha256 "cd9f3d98695030d35a89456c486e3f0036e9f7cbf7c1fa1cc76663a78d1db65c"
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
