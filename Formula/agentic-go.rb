class AgenticGo < Formula
  desc "Source-grounded Go MCP server for coding agents"
  homepage "https://github.com/agentic-mcps/go"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agentic-mcps/go/releases/download/v1.0.0/agentic-go_1.0.0_darwin_arm64.tar.gz"
      sha256 "5b355ee334151a3b8e8bdba0f553df7b9813b534c825f6d77f31864394c30175"
    else
      url "https://github.com/agentic-mcps/go/releases/download/v1.0.0/agentic-go_1.0.0_darwin_amd64.tar.gz"
      sha256 "f2ed5dadb22ebb52af607adf40088164bf7a9b31775601f978baa45f35693b15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/agentic-mcps/go/releases/download/v1.0.0/agentic-go_1.0.0_linux_arm64.tar.gz"
      sha256 "8936f11144986caf29b13f3a8cfbd6fcfc3d3bb837e98c667b68741099d84a5c"
    else
      url "https://github.com/agentic-mcps/go/releases/download/v1.0.0/agentic-go_1.0.0_linux_amd64.tar.gz"
      sha256 "f55a4af9c3389b2e32a43734ce6591372e23ff54f623d07d5790385a58868f25"
    end
  end

  def install
    bin.install "agentic-go"
    bin.install "agentic-go-gopls"
    bin.install "agentic-go-vet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentic-go --version")
  end
end
