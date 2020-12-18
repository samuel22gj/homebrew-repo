
class Tldt < Formula
  desc "help you collect commands that are long and difficult to remember"
  homepage "https://github.com/samuel22gj/TLDT"
  url "https://github.com/samuel22gj/TLDT/archive/v1.0.2.tar.gz"
  version "1.0.2"
  sha256 "182800339acad13279488ba3d9312d3c905c090bb413a12f3c7e8181d64bc59e"
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