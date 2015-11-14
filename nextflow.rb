class Nextflow < Formula
  desc "Data-driven computational pipelines"
  homepage "http://www.nextflow.io/"
  # doi "10.6084/m9.figshare.1254958"
  # tag "bioinformatics"

  url "http://www.nextflow.io/releases/v0.16.2/nextflow"
  version "0.16.2"
  sha256 "b57a8a73195e1f6e6c0a81621361869c11d29d8825e6540897ef6ab74667d5d1"

  head "https://github.com/nextflow-io/nextflow.git"

  bottle do
    cellar :any_skip_relocation
    sha256 "48e884bd04fe3b8ac61f2bcd069cdab5be6546562019ae0c6d54d121194995e1" => :el_capitan
    sha256 "a950bd93fe432651a37e0f66533f0707fecd69572610ffd0b010e29851d14595" => :yosemite
    sha256 "2bc99b2a007559b38c51e4f9ccc98db412fb6c97206b42e4549f9e5a2ab7d9a9" => :mavericks
  end

  depends_on :java => "1.7+"

  def install
    bin.install "nextflow"
  end

  test do
    system "#{bin}/nextflow", "-download"
    system "echo", "println \'hello\' | #{bin}/nextflow -q run - |grep hello"
  end
end
