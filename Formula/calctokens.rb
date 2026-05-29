class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "1.0.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.1/calctokens-macos-arm64",
      tag: "v1.0.1"
    sha256 "5ea16ded55ca006e6c788ce2e003f4436c7509a35840382d89b5f605e2389966"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.1/calctokens-linux-x86_64",
      tag: "v1.0.1"
    sha256 "202ab14ce7f0aa7242f36b35ef61c3dfde87b4d342218bcdcf99d3957af3c530"
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
