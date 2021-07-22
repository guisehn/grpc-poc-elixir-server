# SampleApp

Start the server: `mix grpc.server` -- any changes require reload.

Then, run from [grpc-poc-protofiles](https://github.com/guisehn/grpc-poc-protofiles):

`grpcurl -plaintext -proto protofiles/hello_service.proto -d '{"name":"gui"}' localhost:50051 grpc_poc.HelloService.Hello`

(`grpcurl` can be installed with `brew install grpcurl`)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `sample_app` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:sample_app, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/sample_app](https://hexdocs.pm/sample_app).

