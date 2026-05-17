class TimichMcp < Formula
  desc "Local stdio MCP server for Timich Agent photo and video search"
  homepage "https://github.com/rsahara/timich-mcp"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rsahara/timich-mcp/releases/download/v0.1.0/timich-mcp_0.1.0_darwin_arm64.tar.gz"
      sha256 "9e310a38624ea6dac987c349a58756d18306b98d0eb0e54a9da3a3dfb09b0785"
    else
      url "https://github.com/rsahara/timich-mcp/releases/download/v0.1.0/timich-mcp_0.1.0_darwin_amd64.tar.gz"
      sha256 "9e5c688ddaab72996b344f17041c2e79b302e32e971ef77f5d066d3826620d5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rsahara/timich-mcp/releases/download/v0.1.0/timich-mcp_0.1.0_linux_arm64.tar.gz"
      sha256 "13fabd2365cd7a2fe5ec928d7a3965f3d04b6ecd8e94709bd9b2ee9633fc6574"
    else
      url "https://github.com/rsahara/timich-mcp/releases/download/v0.1.0/timich-mcp_0.1.0_linux_amd64.tar.gz"
      sha256 "94504e877bf22b01a01a06a3c46df0ed92dce3360f660a35b53d50946123d714"
    end
  end

  def install
    binary = Dir["timich-mcp*/timich-mcp"].first || "timich-mcp"
    bin.install binary => "timich-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/timich-mcp version")
  end
end
