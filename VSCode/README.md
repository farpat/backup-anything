`settings.json`
```javascript
{
    "editor.fontFamily": "Fira Code",
    "editor.letterSpacing": 1.1,
    "editor.lineHeight": 22,
    "editor.fontLigatures": true,
    "editor.fontSize": 12,
    "editor.mouseWheelZoom": true,
    "workbench.colorTheme": "Tokyo Night Light",
    "git.enableSmartCommit": true,
    "git.confirmSync": false,
    "git.autofetch": true,
    "files.exclude": {
        "**/.vscode": true
    },
    "terminal.integrated.fontFamily": "monospace",
    "workbench.iconTheme": "vscode-icons",
    "editor.minimap.enabled": false,
    "javascript.inlayHints.parameterNames.enabled": "all",
    "security.workspace.trust.untrustedFiles": "open",
    "explorer.confirmDelete": false,
    "explorer.confirmDragAndDrop": false,
    "files.autoSave": "onFocusChange",
    "extensions.ignoreRecommendations": true,
    "git.openRepositoryInParentFolders": "always",
    "php.validate.executablePath": "php",
    "csv-preview.separator": "[,;]",
    "csv-preview.resizeColumns": "all",
    "workbench.editor.empty.hint": "hidden",
    "redhat.telemetry.enabled": true,
    "editor.multiCursorLimit": 20000,
    "codeium.enableConfig": {
        "*": true,
        "markdown": true
    },
    "[vue]": {
        "editor.defaultFormatter": "Vue.volar"
    },
    "chat.commandCenter.enabled": false,
    "editor.stickyScroll.enabled": false,
    "Laravel.phpEnvironment": "local",
    "makefile.configureOnOpen": true,
    "gitlens.currentLine.format": "${authorAgoOrDate}",
    "gitlens.statusBar.format": "${authorAgoOrDate}",
    "gitlens.blame.format": "${date} ${author} ",
    "workbench.layoutControl.enabled": false,
}
```

`keybindings.json`
```javascript
// Place your key bindings in this file to override the defaultsauto[]
[
    {
        "key": "ctrl+backspace",
        "command": "editor.action.deleteLines",
        "when": "textInputFocus && !editorReadonly"
    },
    {
        "key": "ctrl+w",
        "command": "editor.action.smartSelect.expand",
        "when": "editorTextFocus"
    },
    {
        "key": "shift+alt+down",
        "command": "editor.action.copyLinesDownAction",
        "when": "editorTextFocus && !editorReadonly"
    },
    {
        "key": "ctrl+numpad_multiply",
        "command": "workbench.action.splitEditorRight"
    },
    {
        "key": "ctrl+numpad3",
        "command": "workbench.action.navigateBack"
    },
    {
        "key": "ctrl+9",
        "command": "-workbench.action.navigateForward"
    },
    {
        "key": "ctrl+w",
        "command": "-workbench.action.closeWindow",
        "when": "!editorIsOpen && !multipleEditorGroups"
    },
    {
        "key": "ctrl+f4",
        "command": "workbench.action.closeActiveEditor"
    },
    {
        "key": "shift+alt+f",
        "command": "editor.action.formatDocument",
        "when": "editorHasDocumentFormattingProvider && editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly"
    },
    {
        "key": "ctrl+o",
        "command": "workbench.action.quickOpen"
    },
    {
        "key": "ctrl+p",
        "command": "workbench.action.showCommands"
    },
    {
        "key": "alt+Enter",
        "command": "editor.action.quickFix"
    },
    {
        "key": "alt+F12",
        "command": "terminal.focus"
    },
    {
        "key": "alt+F12",
        "command": "workbench.action.togglePanel",
        "when": "terminalFocus"
    },
    {
        "key": "ctrl+numpad9",
        "command": "workbench.action.navigateForward",
        "when": "canNavigateForward"
    },
    {
        "key": "ctrl+[Period]",
        "command": "editor.action.commentLine",
        "when": "editorTextFocus && !editorReadonly"
    },
    {
        "key": "ctrl+shift+l",
        "command": "windsurf.prioritized.chat.open"
    },
    {
        "key": "ctrl+shift+l",
        "command": "-windsurf.prioritized.chat.open",
    },
    {
        "key": "ctrl+l",
        "command": "-windsurf.prioritized.chat.open",
        "when": "!terminalFocus"
    },
    {
        "key": "ctrl+l",
        "command": "-workbench.action.chat.newChat",
        "when": "chatIsEnabled && inChat && chatLocation != 'editing-session'"
    },
    {
        "key": "ctrl+l",
        "command": "-workbench.action.chat.newEditSession",
        "when": "chatEditingParticipantRegistered && chatIsEnabled && inChat && chatLocation == 'editing-session'"
    },
    {
        "key": "ctrl+l",
        "command": "-expandLineSelection",
        "when": "textInputFocus"
    },
    {
        "key": "ctrl+l",
        "command": "-notebook.centerActiveCell",
        "when": "notebookEditorFocused"
    },
    {
        "key": "ctrl+l",
        "command": "-windsurf.prioritized.chat.openFromTerminal",
        "when": "terminalFocus"
    },
    {
        "key": "ctrl+alt+s",
        "command": "workbench.action.openSettings"
    },
    {
        "key": "f2",
        "command": "editor.action.rename",
        "when": "editorHasRenameProvider && editorTextFocus && !editorReadonly"
    },
    {
        "key": "f2",
        "command": "-editor.action.rename",
        "when": "editorHasRenameProvider && editorTextFocus && !editorReadonly"
    },
    {
        "key": "shift+f6",
        "command": "renameFile",
        "when": "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus"
    },
    {
        "key": "f2",
        "command": "-renameFile",
        "when": "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus"
    },
    {
        "key": "ctrl+-",
        "command": "editor.fold",
    },
    {
        "key": "ctrl+=",
        "command": "editor.unfold",
    },
    {
        "key": "ctrl+shift+-",
        "command": "editor.foldAll",
    },
    {
        "key": "ctrl+shift+=",
        "command": "editor.unfoldAll",
    },
]
```
