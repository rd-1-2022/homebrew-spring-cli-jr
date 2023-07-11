# Generated with JReleaser 1.7.0 at 2023-07-11T09:27:01.753788719Z
class SpringCli < Formula
  desc "Spring Cli"
  homepage "https://github.com/rd-1-2022/spring-cli-jr"
  url "https://github.com/rd-1-2022/spring-cli-jr/releases/download/v0.0.6/spring-cli-0.0.6.zip"
  version "0.0.6"
  sha256 "11fc6825b3ae618db12d96e701fd9db1fe2d05b0529a86d7b1f0814a6d7352a1"
  license "Apache-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/spring-cli" => "spring-cli"
  end

  test do
    output = shell_output("#{bin}/spring-cli --version")
    assert_match "0.0.6", output
  end
end
