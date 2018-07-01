import 'protocol/language_server/messages.dart';

final serverCapabilities = new ServerCapabilities((b) => b
  ..textDocumentSync = new TextDocumentSyncOptions((b) => b
    ..openClose = true
    ..change = TextDocumentSyncKind.incremental
    ..willSave = false
    ..willSaveWaitUntil = false
    ..save = new SaveOptions((b) => b..includeText = false))
  ..hoverProvider = true
  ..completionProvider = new CompletionOptions((b) => b
    ..resolveProvider = false
    ..triggerCharacters = const ['.'])
  ..codeActionProvider = true
  ..definitionProvider = true
  ..referencesProvider = true
  ..renameProvider = true
  ..documentHighlightsProvider = false
  ..documentSymbolProvider = false
  ..workspaceSymbolProvider = false
  ..codeLensProvider = false
  ..documentFormattingProvider = false
  ..documentRangeFormattingProvider = false
  ..documentOnTypeFormattingProvider = false);
