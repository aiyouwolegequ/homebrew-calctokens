class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.2/calctokens-macos-arm64",
      tag: "v1.1.2"
    sha256 "e6bb7e4eeb05382dea81d6312160087f99397420f2237cc16ae6f9ea66a17c36"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.2/calctokens-linux-x86_64",
      tag: "v1.1.2"
    sha256 "e87b691c5af05637be17f0ac9590e90ece95dcc8775c942e914236cd1afa2f66"
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
