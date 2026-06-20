class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.2.1/calctokens-macos-arm64",
      tag: "v1.2.1"
    sha256 "6c40a28dbd9db99c66fea0a8d923cc2c379bd4516b06e31b3b50c372cc5ea7b8"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.2.1/calctokens-linux-x86_64",
      tag: "v1.2.1"
    sha256 "3df2990db93ac4e0fb4589af84466eaa8adbb7ea43ac4a70394fe2c368a246b8"
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
