class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.9/calctokens-macos-arm64",
      tag: "v1.1.9"
    sha256 "baef765e98487453ac1f6bc4393fc4b493d28dbe1c3d7141993741b3dc4e2070"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.9/calctokens-linux-x86_64",
      tag: "v1.1.9"
    sha256 "5e5854904ed69a096be8ad78f36dcb14f48fafde2de00f845f4e24383d3ae8eb"
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
