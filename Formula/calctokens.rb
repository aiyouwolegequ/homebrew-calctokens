class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.8.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.2/calctokens-macos-arm64",
      tag: "v0.8.2"
    sha256 "5afd5056b4a9e9df3a0e3d9bd46f88955a649a88882c58c062c8e06d5d57816f"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.2/calctokens",
      tag: "v0.8.2"
    sha256 "PLACEHOLDER_FOR_OTHER_ARCH"
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
