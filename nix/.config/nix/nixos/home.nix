{ config, pkgs, ... }:

{
	home.username = "developer";
	home.homeDirectory = "/home/developer";
	home.stateVersion = "26.05";

	programs.home-manager.enable = true;

	home.packages = with pkgs; [
		bash
		fish
		starship
		tmux
		git
		gh
		jq
		yq
		httpie
		yazi
		stow

    docker
    
		typescript-language-server
		lua-language-server
	];


	home.sessionVariables = {
		EDITOR = "nvim";
		VISUAL = "nvim";
		PAGER  = "less";
		MANPAGER = "less -R";
		COLORTERM = "truecolor";
	};

	programs.neovim = {
		enable = true;
		viAlias = true;
		vimAlias = true;
		defaultEditor = true;
	};

	xdg.enable = true;
}
