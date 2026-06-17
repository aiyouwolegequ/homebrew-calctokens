class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.0/calctokens-macos-arm64",
      tag: "v1.1.0"
    sha256 "0075f3f6c2c29d56d2b893d53cc06edddffae82c3fea1e5765f41cc5505cb88e"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.0/calctokens-linux-x86_64",
      tag: "v1.1.0"
    sha256 "e3872af890bc4917f2a6b2e23e8dee31d8b7c6100311a8d1c9bf6cf45701c83f"
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
