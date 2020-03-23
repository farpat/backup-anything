`settings.json`
```javascript
{
    "window.zoomLevel": 1,
    "editor.fontFamily": "Fira Code",
    "editor.letterSpacing": 1.1,
    "editor.lineHeight": 22,
    "editor.fontLigatures": true,
    "editor.fontSize": 12,
    "editor.mouseWheelZoom": true,
    "workbench.colorTheme": "Atom One Light",
    "git.enableSmartCommit": true,
    "git.confirmSync": false,
    "git.autofetch": true,
    "files.exclude": {
        "**/.vscode": true
    },
    "docker.groupImagesBy": "RepositoryName",
    "terminal.integrated.fontFamily": "monospace",
    "workbench.iconTheme": "vscode-icons",
    "workbench.activityBar.visible": true,
    "editor.minimap.enabled": false,
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
        "key": "ctrl+shift+k",
        "command": "-editor.action.deleteLines",
        "when": "textInputFocus && !editorReadonly"
    },
    {
        "key": "ctrl+w",
        "command": "editor.action.smartSelect.expand",
        "when": "editorTextFocus"
    },
    {
        "key": "shift+alt+right",
        "command": "-editor.action.smartSelect.expand",
        "when": "editorTextFocus"
    },
    {
        "key": "shift+alt+down",
        "command": "editor.action.copyLinesDownAction",
        "when": "editorTextFocus && !editorReadonly"
    },
    {
        "key": "ctrl+shift+alt+down",
        "command": "-editor.action.copyLinesDownAction",
        "when": "editorTextFocus && !editorReadonly"
    },
    {
        "key": "ctrl+numpad_multiply",
        "command": "workbench.action.splitEditorRight"
    },
    {
        "key": "shift+alt+f",
        "command": "editor.action.formatDocument.none",
        "when": "editorTextFocus && !editorHasDocumentFormattingProvider && !editorHasDocumentFormattingProvider && !editorReadonly"
    },
    {
        "key": "ctrl+shift+i",
        "command": "-editor.action.formatDocument.none",
        "when": "editorTextFocus && !editorHasDocumentFormattingProvider && !editorHasDocumentFormattingProvider && !editorReadonly"
    },
    {
        "key": "ctrl+alt+p",
        "command": "workbench.action.navigateBack"
    },
    {
        "key": "ctrl+alt+n",
        "command": "workbench.action.navigateForward"
    },
    {
        "key": "ctrl+8",
        "command": "-workbench.action.navigateForward"
    },
    {
        "key": "ctrl+[Period]",
        "command": "editor.action.addCommentLine",
        "when": "editorTextFocus && !editorReadonly"
    },
    {
        "key": "ctrl+k ctrl+c",
        "command": "-editor.action.addCommentLine",
        "when": "editorTextFocus && !editorReadonly"
    },
    {
        "key": "ctrl+w",
        "command": "-workbench.action.closeWindow",
        "when": "!editorIsOpen && !multipleEditorGroups"
    },
    {
        "key": "ctrl+shift+w",
        "command": "-workbench.action.closeWindow"
    },
    {
        "key": "ctrl+f4",
        "command": "workbench.action.closeActiveEditor"
    },
    {
        "key": "ctrl+w",
        "command": "-workbench.action.closeActiveEditor"
    },
    {
        "key": "shift+alt+f",
        "command": "editor.action.formatDocument",
        "when": "editorHasDocumentFormattingProvider && editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly"
    },
    {
        "key": "ctrl+shift+i",
        "command": "-editor.action.formatDocument",
        "when": "editorHasDocumentFormattingProvider && editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly"
    }
]

```