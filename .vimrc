"
" VIMStorm configuration entry point
"
" author: Ingo Fahrentholz <ingof.work@gmail.com>
" source: https://github.com/ifahrentholz/VIMStorm
" year  : 2015
"



" You won't find any configuration here directly,
" please look at files under the config folder for global & plugin configuration

filetype plugin on

let s:vimDir = $HOME.'/.vim'

let g:hardcoreMode = 0

let s:pluginDir  = s:vimDir.'/plugins/plugged'
let s:pluginDef  = s:vimDir.'/install/plugins.vim'
let s:pluginConf = s:vimDir.'/config/plugins.vim'

let s:configSetting = s:vimDir.'/config/settings.vim'
let s:configMapping = s:vimDir.'/config/mappings.vim'
let s:configAbbrev  = s:vimDir.'/config/abbrevs.vim'
let s:configAutocmd  = s:vimDir.'/config/autocmds.vim'

let s:userConfig  = s:vimDir.'/userConfig.vim'

if !isdirectory(s:pluginDir)

    " Welcome message when plugins are not yet installed

    echom " "
    echom "Welcome to VIMStorm"
    echom " > the vim IDE for web dev <"
    echom " "
    echom "Checking dependencies :"
    if !executable('node') || !executable('npm')
        echom " [ERR] node.js and npm are required, please install them before continuing."
    	echom " "
    else

        echom "  - nodejs   : ok"
        echom "  - npm      : ok"
        echom "  - eslint   : " . (executable('eslint')   ? "ok" : "no (optional)")
        echom "  - jsonlint : " . (executable('jsonlint') ? "ok" : "no (optional)")
        echom "  - csslint  : " . (executable('csslint')  ? "ok" : "no (optional)")
        echom " done."

        echom " "
        echom "We are going to install the plugins : "
        echom " 1. take a coffee"
        echom " 2. reload vim"
        echom " 3. Envoy VIMStorm"
        echom " "
        echom "Please note if you want to have the arrows keys and <esc>, disable the 'hardcoreMode' in the vimrc"
        echom " "

        exec ":source ".s:pluginDef

	"Install plugins on first run
	autocmd VimEnter * PlugInstall
    endif
else

    " Loads the global config, mapping and settings
    exec ":source ".s:configSetting
    exec ":source ".s:configMapping
    exec ":source ".s:configAbbrev
    exec ":source ".s:configAutocmd

    " Loads plugins def and config
    exec ":source ".s:pluginDef
    exec ":source ".s:pluginConf


    " user configuration
    if filereadable(s:userConfig)
        exec ":source ".s:userConfig
    endif

endif
