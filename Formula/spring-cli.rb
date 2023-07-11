# Generated with JReleaser 1.7.0 at 2023-07-11T12:53:19.118816145Z
class SpringCli < Formula
  desc "Spring Cli"
  homepage "https://github.com/rd-1-2022/spring-cli-jr"
  url "https://github.com/rd-1-2022/spring-cli-jr/releases/download/v0.0.7/spring-cli-0.0.7.zip"
  version "0.0.7"
  sha256 "f0e38b9560d422164df1c7ed51f4e2e1a6237779652061b3d4d871ba71dc97e0"
  license "Apache-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/spring" => "spring"
  end

  test do
    output = shell_output("#{bin}/spring --version")
    assert_match "0.0.7", output
  end
end
