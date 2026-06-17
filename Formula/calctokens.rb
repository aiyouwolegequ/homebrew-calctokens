class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.5/calctokens-macos-arm64",
      tag: "v1.1.5"
    sha256 "7ac5cd93901e45c631a9a765a6a9b67a995d4884302f420d543617e2f741ca0a"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.5/calctokens-linux-x86_64",
      tag: "v1.1.5"
    sha256 "e6790128cefc45aa0ce78ce49f89f60c1e62b3f9ee9a6efb72d3ff5c8b340561"
  end

  def install
    target = bin/"calctokens"
    bin.mkpath
    rm target if target.exist?
    cp cached_download, target
    chmod(0755, target)
  end

  test do
    system bin/"calctokens", "--help"
  end
end
