# Servidor HTTP mínimo para la presentación. Cierra esta ventana para detenerlo.
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:8765/")
$listener.Start()
Write-Host "Presentacion disponible en http://localhost:8765/Charla_UDD_Concepcion_v2.html"
Write-Host "Cierra esta ventana al terminar la charla."
$types = @{ ".html"="text/html; charset=utf-8"; ".jpg"="image/jpeg"; ".png"="image/png"; ".txt"="text/plain; charset=utf-8" }
while ($listener.IsListening) {
  $ctx = $listener.GetContext()
  $path = [Uri]::UnescapeDataString($ctx.Request.Url.AbsolutePath).TrimStart('/')
  if ($path -eq "") { $path = "Charla_UDD_Concepcion_v2.html" }
  $file = Join-Path $root $path
  if (Test-Path $file -PathType Leaf) {
    $bytes = [IO.File]::ReadAllBytes($file)
    $ext = [IO.Path]::GetExtension($file).ToLower()
    $ctx.Response.ContentType = if ($types[$ext]) { $types[$ext] } else { "application/octet-stream" }
    $ctx.Response.ContentLength64 = $bytes.Length
    $ctx.Response.OutputStream.Write($bytes, 0, $bytes.Length)
  } else {
    $ctx.Response.StatusCode = 404
  }
  $ctx.Response.Close()
}
