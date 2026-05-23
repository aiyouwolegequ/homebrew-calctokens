class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.9.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.2/calctokens-macos-arm64",
      tag: "v0.9.2"
    sha256 "47018d19a06218630ca59d88b27b5fe85bc66c232fbedf9b357fc71e9b411a0b"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.2/calctokens",
      tag: "v0.9.2"
    sha256 "d2023ca46c965ac478bd3d7574b2034f6fe31411df16496ac35f6715f66cffa3"
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
