class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "1.0.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.0/calctokens-macos-arm64",
      tag: "v1.0.0"
    sha256 "bf214c1f1461ac128027f98d2673952dfb2fcbb9540ca389c028a0f343de7ccb"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.0/calctokens-linux-x86_64",
      tag: "v1.0.0"
    sha256 "e3282db05d518f26f377a845f14291965f6ad6b9b366898ece065ba80a27e4bb"
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
