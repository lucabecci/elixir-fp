defmodule Lib.K8sGenerator do
  def generate_pod(image) do
    IO.inspect("creating pod")
    IO.inspect("finding the image #{image}")
    IO.inspect("pod success creation")
  end
end

