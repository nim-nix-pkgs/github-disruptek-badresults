{
  description = ''a simpler and less fascist fork of nim-result'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-github-disruptek-badresults-2_1_0.flake = false;
  inputs.src-github-disruptek-badresults-2_1_0.ref   = "refs/tags/2.1.0";
  inputs.src-github-disruptek-badresults-2_1_0.owner = "disruptek";
  inputs.src-github-disruptek-badresults-2_1_0.repo  = "badresults";
  inputs.src-github-disruptek-badresults-2_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-github-disruptek-badresults-2_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-github-disruptek-badresults-2_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}