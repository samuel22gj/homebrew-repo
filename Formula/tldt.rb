
class Tldt < Formula
  desc "help you collect commands that are long and difficult to remember"
  homepage "https://github.com/samuel22gj/TLDT"
  url "https://github.com/samuel22gj/TLDT/archive/v1.0.1.tar.gz"
  version "1.0.1"
  sha256 "034cd4fea39c08c0b64da45f3be6e00b57c8a2313192897d5f1d7e5f707eb438"
  license "Apache-2.0"
  head "https://github.com/samuel22gj/TLDT.git"

  bottle :unneeded
  
  depends_on "python"

  def install
    bin.install "tldt.py" => "tldt"
    # bash_completion.install "bash_completion.d/tldt"
    # zsh_completion.install "zsh-completion/_tldt"
  end
  
  test do
    output = shell_output("#{bin}/tldt --help")
    assert_includes output, "usage: tldt"
  end
end