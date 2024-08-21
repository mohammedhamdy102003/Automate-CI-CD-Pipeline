# Check if Mongo Express is running
$mongoExpressRunning = docker ps -q -f name=mongo-express

if ($mongoExpressRunning) {
    Write-Host "Mongo Express is already running."
} else {
    $mongoExpressExists = docker ps -aq -f name=mongo-express

    if ($mongoExpressExists) {
        Write-Host "Mongo Express is not running but exists. Starting it..."
        docker-compose up -d mongo-express
    } else {
        Write-Host "Mongo Express is not running. Starting both MongoDB and Mongo Express..."
        docker-compose up -d
    }
}
