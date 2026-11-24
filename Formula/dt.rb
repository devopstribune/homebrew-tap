class Dt < Formula
  desc "Official DevOps Tribune CLI (dt) — Developer-first DevOps, Cloud, SRE terminal companion"
  homepage "https://www.devopstribune.com"
  url "https://registry.npmjs.org/@devopstribune/cli/-/cli-1.1.0.tgz"
  sha256 "4fb9ba0758c641daf2e122d71fa8413729285578eff9595050aa33e29ce07860"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "dt version", shell_output("#{bin}/dt version")
    assert_match "DevOps Tribune CLI", shell_output("#{bin}/dt --help")
  end
end
