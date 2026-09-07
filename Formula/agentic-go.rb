class AgenticGo < Formula
  desc "Source-grounded Go MCP server for coding agents"
  homepage "https://github.com/agentic-mcps/go"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agentic-mcps/go/releases/download/v1.1.0/agentic-go_1.1.0_darwin_arm64.tar.gz"
      sha256 "d0d6dfebebfef17d1c85a8d4fbeeb34de8f6f6ac91593dc60ad04e7c7ff50a41"
    else
      url "https://github.com/agentic-mcps/go/releases/download/v1.1.0/agentic-go_1.1.0_darwin_amd64.tar.gz"
      sha256 "770d5c7ad5f0238e5ee8686a3f013cee7ee02ebe9d40557c570b03497515d44c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/agentic-mcps/go/releases/download/v1.1.0/agentic-go_1.1.0_linux_arm64.tar.gz"
      sha256 "fc60513e0d9f8ac78736671fb8de825b7d51781650551539d8f480fe42078fef"
    else
      url "https://github.com/agentic-mcps/go/releases/download/v1.1.0/agentic-go_1.1.0_linux_amd64.tar.gz"
      sha256 "2e26d1ba9d8e107c809b131822607b5feed62a0857b72b3eb15179c89fd73dc3"
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
