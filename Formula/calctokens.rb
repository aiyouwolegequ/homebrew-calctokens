class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.9.9"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.9/calctokens-macos-arm64",
      tag: "v0.9.9"
    sha256 "a53cb9c96c7e2448119dd909a5a9cc5825f4dfb12b9394a7b443246d9fec7cbc"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.9/calctokens-linux-x86_64",
      tag: "v0.9.9"
    sha256 "edaa283bfe0e6b4fd091948edaa06eeec3d7ab5f5d31dcbf0539acfbe57d6a90"
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
