class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.9.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.0/calctokens-macos-arm64",
      tag: "v0.9.0"
    sha256 "2d26d570dd2cce230cf2b7be512568f02b733ed4db0da5e9938f38eba0bfd296"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.0/calctokens",
      tag: "v0.9.0"
    sha256 "b782fdfe9c827f10b52cd0ee76004c087c71c1384391ea87870d026d177d0190"
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
