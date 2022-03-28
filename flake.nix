{
  description = ''a simpler and less fascist fork of nim-result'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."github-disruptek-badresults-master".dir   = "master";
  inputs."github-disruptek-badresults-master".owner = "nim-nix-pkgs";
  inputs."github-disruptek-badresults-master".ref   = "master";
  inputs."github-disruptek-badresults-master".repo  = "github-disruptek-badresults";
  inputs."github-disruptek-badresults-master".type  = "github";
  inputs."github-disruptek-badresults-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-badresults-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-badresults-1_0_0".dir   = "1_0_0";
  inputs."github-disruptek-badresults-1_0_0".owner = "nim-nix-pkgs";
  inputs."github-disruptek-badresults-1_0_0".ref   = "master";
  inputs."github-disruptek-badresults-1_0_0".repo  = "github-disruptek-badresults";
  inputs."github-disruptek-badresults-1_0_0".type  = "github";
  inputs."github-disruptek-badresults-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-badresults-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-badresults-1_0_1".dir   = "1_0_1";
  inputs."github-disruptek-badresults-1_0_1".owner = "nim-nix-pkgs";
  inputs."github-disruptek-badresults-1_0_1".ref   = "master";
  inputs."github-disruptek-badresults-1_0_1".repo  = "github-disruptek-badresults";
  inputs."github-disruptek-badresults-1_0_1".type  = "github";
  inputs."github-disruptek-badresults-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-badresults-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-badresults-2_0_0".dir   = "2_0_0";
  inputs."github-disruptek-badresults-2_0_0".owner = "nim-nix-pkgs";
  inputs."github-disruptek-badresults-2_0_0".ref   = "master";
  inputs."github-disruptek-badresults-2_0_0".repo  = "github-disruptek-badresults";
  inputs."github-disruptek-badresults-2_0_0".type  = "github";
  inputs."github-disruptek-badresults-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-badresults-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-badresults-2_1_0".dir   = "2_1_0";
  inputs."github-disruptek-badresults-2_1_0".owner = "nim-nix-pkgs";
  inputs."github-disruptek-badresults-2_1_0".ref   = "master";
  inputs."github-disruptek-badresults-2_1_0".repo  = "github-disruptek-badresults";
  inputs."github-disruptek-badresults-2_1_0".type  = "github";
  inputs."github-disruptek-badresults-2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-badresults-2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-badresults-2_1_1".dir   = "2_1_1";
  inputs."github-disruptek-badresults-2_1_1".owner = "nim-nix-pkgs";
  inputs."github-disruptek-badresults-2_1_1".ref   = "master";
  inputs."github-disruptek-badresults-2_1_1".repo  = "github-disruptek-badresults";
  inputs."github-disruptek-badresults-2_1_1".type  = "github";
  inputs."github-disruptek-badresults-2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-badresults-2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-badresults-2_1_2".dir   = "2_1_2";
  inputs."github-disruptek-badresults-2_1_2".owner = "nim-nix-pkgs";
  inputs."github-disruptek-badresults-2_1_2".ref   = "master";
  inputs."github-disruptek-badresults-2_1_2".repo  = "github-disruptek-badresults";
  inputs."github-disruptek-badresults-2_1_2".type  = "github";
  inputs."github-disruptek-badresults-2_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-badresults-2_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-badresults-2_1_3".dir   = "2_1_3";
  inputs."github-disruptek-badresults-2_1_3".owner = "nim-nix-pkgs";
  inputs."github-disruptek-badresults-2_1_3".ref   = "master";
  inputs."github-disruptek-badresults-2_1_3".repo  = "github-disruptek-badresults";
  inputs."github-disruptek-badresults-2_1_3".type  = "github";
  inputs."github-disruptek-badresults-2_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-badresults-2_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}