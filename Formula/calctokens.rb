class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.8.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.0/calctokens-macos-arm64",
      tag: "v0.8.0"
    sha256 "f759a24cf427016cfc1a365242bd261814a13841242d4651dbb720f8042bdde7"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.0/calctokens",
      tag: "v0.8.0"
    sha256 "bd13a51bd385da4bbc87df748a518d25e53c4f5c94367b2002dac5c0d49160e4"
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
