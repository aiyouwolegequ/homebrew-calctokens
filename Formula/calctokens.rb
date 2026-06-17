class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.4/calctokens-macos-arm64",
      tag: "v1.1.4"
    sha256 "fab6fe4f03aabdfcec3d5c67fca482c1f0dc3b4c4c95b751443657bd94778c89"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.4/calctokens-linux-x86_64",
      tag: "v1.1.4"
    sha256 "8bce6f12b91731eb2aaedf764879b75b25e6062eb57df71e41046cebb7762168"
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
