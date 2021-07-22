## GRPC POC Elixir Server

- `mix deps.get`
- `mix grpc.server`

## Clients

### GRPC POC Elixir Client

[grpc-poc-elixir-client](https://github.com/guisehn/grpc-poc-elixir-client)

### grpcurl

Run this command from inside [grpc-poc-protofiles](https://github.com/guisehn/grpc-poc-protofiles):

`grpcurl -plaintext -proto protofiles/hello_service.proto -d '{"name":"gui"}' localhost:50051 grpc_poc.HelloService.Hello`

If you don't have it: `brew install grpcurl`
