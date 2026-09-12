class McpExposure < Formula
  desc "List the MCP servers registered on this machine and how each one is exposed"
  homepage "https://github.com/nobu666/mcp-exposure"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nobu666/mcp-exposure/releases/download/v0.2.0/mcp-exposure_0.2.0_darwin_arm64.tar.gz"
      sha256 "e6660dbf10cdb37026a9b5e4714fe4f62643fe8716df07e4ef004d9e2052e15f"
    end
    on_intel do
      url "https://github.com/nobu666/mcp-exposure/releases/download/v0.2.0/mcp-exposure_0.2.0_darwin_amd64.tar.gz"
      sha256 "1db6123fb7e937c34ad805ac013acf9d5f28a4ce0467ffdfc146acc75d777673"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nobu666/mcp-exposure/releases/download/v0.2.0/mcp-exposure_0.2.0_linux_arm64.tar.gz"
      sha256 "c02df953d804f539a8305ca5bc5090da51a26dd0eb04a9a31b1b5f1fd2147099"
    end
    on_intel do
      url "https://github.com/nobu666/mcp-exposure/releases/download/v0.2.0/mcp-exposure_0.2.0_linux_amd64.tar.gz"
      sha256 "9da4de234cf2d2fef9bf64ba35f6e62c9ae8820d8a9a6d68b0854f01e52385ce"
    end
  end

  def install
    bin.install "mcp-exposure"
  end

  test do
    system "#{bin}/mcp-exposure", "--help"
  end
end
