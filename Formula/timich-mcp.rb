class TimichMcp < Formula
  desc "Local stdio MCP server for Timich Agent"
  homepage "https://github.com/rsahara/timich-mcp"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rsahara/timich-mcp/releases/download/v0.1.0/timich-mcp_0.1.0_darwin_arm64.tar.gz"
      sha256 "7e8cdd959422c0e496439efe3efb632de4827651efcfced58150fad399c039f8"
    end

    on_intel do
      url "https://github.com/rsahara/timich-mcp/releases/download/v0.1.0/timich-mcp_0.1.0_darwin_amd64.tar.gz"
      sha256 "4e69a6bb175e7e5f1c3b2682e3c87892ad0907f9665dd700fcabc9a626ffed57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rsahara/timich-mcp/releases/download/v0.1.0/timich-mcp_0.1.0_linux_arm64.tar.gz"
      sha256 "a3ebbf886a78665e2453fb1d4afb3bff9cab34ccda4a85f26d4c4a6044f022eb"
    end

    on_intel do
      url "https://github.com/rsahara/timich-mcp/releases/download/v0.1.0/timich-mcp_0.1.0_linux_amd64.tar.gz"
      sha256 "33a49043d85d8eff9e99f2c767870be0fdc7c67d119ac000f31ff1b47b2d5a00"
    end
  end

  def install
    bin.install "timich-mcp"
    prefix.install_metafiles
  end

  test do
    output = shell_output("#{bin}/timich-mcp version")
    assert_match "timich-mcp #{version}", output
  end
end
