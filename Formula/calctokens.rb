class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.7/calctokens-macos-arm64",
      tag: "v1.1.7"
    sha256 "984bccebad6b9640d6ad44dccbd67a208cff0d6cc21aa75e13f29dd5cf5c3a50"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.7/calctokens-linux-x86_64",
      tag: "v1.1.7"
    sha256 "200b443013bdff97de049c4b1cd6001046642d009f32da147a59dfd79e4b0f98"
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
