defmodule RogerApi.Jobs do
  @moduledoc """
  Documentation for Jobs.
  """

  @doc """
  Given a nested data structure, where each element contents nested items:
  [
      "watcher@127.0.0.1": %{
        "roger_demo_partition" => [
          %Roger.Job{
            args: %{"country" => "Venezuela", "email" => "janedoe@gmail.com", "name" => "Jane Doe", "number_of_pets" => 966},
            execution_key: nil, id: "16ovjr39jvijf4kgrlqe2ib2aadojhid", module: RogerDemo.Job.CreateUpdateUser,
            queue_key: nil, queued_at: 1517697586453, retry_count: 0, started_at: 1517697682999
          }
  ]]

  return a sorted Map with the following structure:
  [
  %Roger.Job{
    args: %{
      "country" => "Venezuela",
      "email" => "janedoe@gmail.com",
      "name" => "Jane Doe",
      "number_of_pets" => 966
    },
    execution_key: nil,
    id: "16ovjr39jvijf4kgrlqe2ib2aadojhid",
    module: RogerDemo.Job.CreateUpdateUser,
    queue_key: nil,
    queued_at: 1517697586453,
    retry_count: 0,
    started_at: 1517697682999
  }]
  """

  def running_jobs([]), do: []
  def running_jobs(jobs), do:  jobs |> Keyword.values() |> Enum.flat_map(&Map.values/1) |> List.flatten()

end
