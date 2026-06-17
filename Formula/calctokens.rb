class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.3/calctokens-macos-arm64",
      tag: "v1.1.3"
    sha256 "3c0304a3cea4f302fa65feffe02b95b88ee518a5fca65073f28f36c234780fe4"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.3/calctokens-linux-x86_64",
      tag: "v1.1.3"
    sha256 "b530b9dbf8b6cd9893e272501c44388ce56e2ddf79ac2b7a980c4e0fc3d1b6d7"
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
