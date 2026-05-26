class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.9.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.3/calctokens-macos-arm64",
      tag: "v0.9.3"
    sha256 "e6be3270dece5fc7458519f2eb9707e5ff159bcd057b09b50cbcca4a6df26d98"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.3/calctokens",
      tag: "v0.9.3"
    sha256 "ecfbb658589267cd1e125edd211ffd1f82c1bb7397a910fd61b1f8619ce59bd8"
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
