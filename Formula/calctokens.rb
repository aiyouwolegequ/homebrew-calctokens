class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.9.7"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.7/calctokens-macos-arm64",
      tag: "v0.9.7"
    sha256 "645181e36245f3e3031e6d292690467e622e7d4a9a76f17233e801a125563722"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.7/calctokens",
      tag: "v0.9.7"
    sha256 "2cc1d6f7907b772a4abf0795f040fa13de88f9392276bd691d3267ee10a94733"
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
