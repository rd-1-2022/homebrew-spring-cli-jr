# Generated with JReleaser 1.7.0 at 2023-07-13T09:15:42.35136413Z
class SpringCli < Formula
  desc "Spring Cli"
  homepage "https://github.com/rd-1-2022/spring-cli-jr"
  url "https://github.com/rd-1-2022/spring-cli-jr/releases/download/v0.0.8/spring-cli-0.0.8.zip"
  version "0.0.8"
  sha256 "7d7cc07bd4b42bcd4694d8f24771311bdf149f2c5b88788967a1b018d206e510"
  license "Apache-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/spring" => "spring"
  end

  test do
    output = shell_output("#{bin}/spring --version")
    assert_match "0.0.8", output
  end
end
