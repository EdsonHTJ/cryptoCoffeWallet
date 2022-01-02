protoc -I=./proto/tron -I/usr/lib -I./proto/googleapis --dart_out=grpc:lib/proto ./proto/tron/core/*.proto ./proto/tron/core/contract/*.proto 
protoc -I=./proto/tron -I/usr/lib -I./proto/googleapis --dart_out=grpc:lib/proto ./proto/tron/api/*.proto
protoc -I=./proto/tron -I/usr/lib -I./proto/googleapis --dart_out=grpc:lib/proto ./proto/googleapis/google/protobuf/*.proto

mkdir -p ./lib/proto/util
protoc -I=./proto/tron -I./proto/util -I/usr/lib -I./proto/googleapis --dart_out=grpc:lib/proto/util ./proto/util/*.proto