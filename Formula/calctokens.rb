class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.9.8"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.8/calctokens-macos-arm64",
      tag: "v0.9.8"
    sha256 "11a74ae0c1b894c7bb800164e0168af11965ec724e583ce832456d0e7d8dfff9"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.8/calctokens",
      tag: "v0.9.8"
    sha256 "52962ac5f15143bcd07cd0d28ff9fe7c5b8790e573c737a230864856a3532fec"
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
