defmodule SampleApp.Endpoint do
  use GRPC.Endpoint

  intercept GRPC.Logger.Server
  run SampleApp.Hello.Server
end

defmodule SampleApp.Hello.Server do
  use GRPC.Server, service: GrpcPoc.HelloService.Service

  def hello(%GrpcPoc.HelloRequest{name: name}, _stream) do
    %GrpcPoc.HelloResponse{message: "Hi #{name}!"}
  end
end
