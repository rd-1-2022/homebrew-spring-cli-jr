# Generated with JReleaser 1.7.0 at 2023-07-11T09:14:57.808484808Z
class SpringCli < Formula
  desc "Spring Cli"
  homepage "https://github.com/rd-1-2022/spring-cli-jr"
  url "https://github.com/rd-1-2022/spring-cli-jr/releases/download/v0.0.5/spring-cli-0.0.5.zip"
  version "0.0.5"
  sha256 "d07f4e02f7c61e0e3859c1a47e196b849b6f322c3a4322a2c8151ec770856980"
  license "Apache-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/spring-cli" => "spring-cli"
  end

  test do
    output = shell_output("#{bin}/spring-cli --version")
    assert_match "0.0.5", output
  end
end
