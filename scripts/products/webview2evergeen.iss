// WebView2 Evergeen Distribution using Bootstrapper
// https://developer.microsoft.com/en-us/microsoft-edge/webview2/

[CustomMessages]
edgewebview2_title=Microsoft Edge WebView2

edgewebview2_size=2 MB

[Code]
const
	edgewebview2_url = 'https://go.microsoft.com/fwlink/p/?LinkId=2124703';

procedure edgewebview2();
var
	version: String;
begin
	if not RegKeyExists(HKLM, 'SOFTWARE\WOW6432Node\Microsoft\EdgeUpdate\Clients\{F3017226-FE2A-4295-8BDF-00C3A9A7E4C5}') then begin
		AddProduct('MicrosoftEdgeWebview2Setup.exe',
			'/silent /install',
			CustomMessage('edgewebview2_title'),
			CustomMessage('edgewebview2_size'),
			GetString(edgewebview2_url, edgewebview2_url, ''),
			'', False, False, False);
	end;
end;