<?php
// Website WebUnlocker API – PHP example (ext-curl)
// Usage: PILOTERR_API_KEY=your-key php webunlocker.php

$params = http_build_query([
    'query' => 'https://www.norauto.fr/t/pneu/w-185-h-55-r-14/ete-s/80-l-h-q.html',
]);

$ch = curl_init('https://api.piloterr.com/v2/website/webunlocker?' . $params);
curl_setopt_array($ch, [
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_TIMEOUT => 60,
    CURLOPT_HTTPHEADER => ['x-api-key: ' . getenv('PILOTERR_API_KEY')],
]);

$body = curl_exec($ch);
$status = curl_getinfo($ch, CURLINFO_HTTP_CODE);
curl_close($ch);

if ($status !== 200) {
    fwrite(STDERR, "Piloterr error $status: $body\n");
    exit(1);
}

$data = json_decode($body, true);
echo json_encode($data, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE), PHP_EOL;
