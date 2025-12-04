proto:
	rm -f pb/*.go
	protoc --proto_path=auth --go_out=pb --go_opt=paths=source_relative \
	-I=. \
	--include_imports \
	--go-grpc_out=pb --go-grpc_opt=paths=source_relative \
	--descriptor_set_out=pb/pb.pb \
	auth/*.proto

.PHONY: proto 
