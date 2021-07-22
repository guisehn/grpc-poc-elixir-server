defmodule SampleApp.Endpoint do
  use GRPC.Endpoint

  intercept GRPC.Logger.Server
  run SampleApp.Hello.Server
end

defmodule SampleApp.Hello.Server do
  use GRPC.Server, service: GrpcPoc.HelloService.Service

  @spec hello(GrpcPoc.HelloRequest.t, GRPC.Server.Stream.t) :: GrpcPoc.HelloResponse.t
  def hello(%GrpcPoc.HelloRequest{name: name}, _stream) do
    %GrpcPoc.HelloResponse{message: "Hi #{name}!"}
  end
end
