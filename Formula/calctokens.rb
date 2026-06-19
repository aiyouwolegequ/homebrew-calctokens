class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.2.0/calctokens-macos-arm64",
      tag: "v1.2.0"
    sha256 "31fce46a775fb7c52525ba7ab24d7ce237493727d3d5d2f0ee9f21c875e90ec5"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.2.0/calctokens-linux-x86_64",
      tag: "v1.2.0"
    sha256 "25f8c643d3ff5efad7cc9f60525e2f68655d551b50f2cd2fc019703e42bfac01"
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
