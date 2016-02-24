
mongo_reset_db() {
  local directory=$1
  local port=27017
  mongorestore "$directory" --drop --port "$port" --db segmentio
}

mongo_dump_collection() {
  local name=$1
  local collection=$2
  local host=$3
  local target_directory=$4
  mongodump \
    --collection "$collection" \
    --host "$host" \
    --db "$name"
    --out "$target_directory"
}
