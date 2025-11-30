class ChatClient < Formula
  desc "Terminal-based WebSocket chat application"
  homepage "https://github.com/KoalaMuch/chat-client"
  url "https://github.com/KoalaMuch/chat-client/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "398b02fc7cada42d81e6231ad4e6c3f5ddfe6baba6257257f801fd65abf89e36"
  license "MIT"

  depends_on "websocat"

  def install
    bin.install "chat-client"
  end

  test do
    assert_predicate bin/"chat-client", :exist?
    assert_predicate bin/"chat-client", :executable?
  end
end
