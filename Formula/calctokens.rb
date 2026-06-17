class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.1/calctokens-macos-arm64",
      tag: "v1.1.1"
    sha256 "0bdf0319b3eefa35db536801e6f649db1aeca756c09dd0293f084d2eca0a4d71"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.1/calctokens-linux-x86_64",
      tag: "v1.1.1"
    sha256 "1db5bc0033cc1a7c5e3d10fc3b6a64a4edf37a85f310ff75f70822f7bf075fa4"
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
