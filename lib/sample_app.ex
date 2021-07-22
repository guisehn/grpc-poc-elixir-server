defmodule SampleApp.Endpoint do
  use GRPC.Endpoint

  intercept GRPC.Logger.Server
  run SampleApp.Hello.Server
end

defmodule SampleApp.Hello.Server do
  use GRPC.Server, service: GrpcPoc.HelloService.Service

  @spec hello(GrpcPoc.HelloRequest.t, GRPC.Server.Stream.t) :: GrpcPoc.HelloResponse.t
  def hello(%GrpcPoc.HelloRequest{name: "fail_test"}, _stream) do
    raise GRPC.RPCError, status: GRPC.Status.not_found(), message: "not found"
  end

  def hello(%GrpcPoc.HelloRequest{name: name}, _stream) do
    %GrpcPoc.HelloResponse{message: "Hi #{name}!"}
  end
end
