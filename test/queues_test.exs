defmodule RegerApi.QueuesTest do
  use ExUnit.Case

  test "verify" do
    input = [
      "server@127.0.0.1": %{
        running: %{
          "roger_test_partition_1" => %{
            default: %{
              consumer_count: 1,
              max_workers: 10,
              message_count: 740,
              paused: false
            },
            fast: %{
              consumer_count: 1,
              max_workers: 10,
              message_count: 740,
              paused: false
            },
            other: %{
              consumer_count: 1,
              max_workers: 2,
              message_count: 0,
              paused: false
            }
          }
        },
        waiting: %{
          "roger_test_partition_2" => %{
            default: %{
              consumer_count: 1,
              max_workers: 10,
              message_count: 740,
              paused: false
            },
            fast: %{
              consumer_count: 1,
              max_workers: 10,
              message_count: 740,
              paused: false
            },
            other: %{
              consumer_count: 1,
              max_workers: 2,
              message_count: 0,
              paused: false
            }
          }
        }
      },
      "watcher@127.0.0.1": %{
        running: %{
          "roger_test_partition_3" => %{
            default: %{
              consumer_count: 1,
              max_workers: 10,
              message_count: 740,
              paused: false
            },
            fast: %{
              consumer_count: 1,
              max_workers: 10,
              message_count: 740,
              paused: false
            },
            other: %{
              consumer_count: 1,
              max_workers: 2,
              message_count: 0,
              paused: false
            }
          }
        },
        waiting: %{
          "roger_test_partition_4" => %{
            default: %{
              consumer_count: 1,
              max_workers: 10,
              message_count: 740,
              paused: false
            },
            fast: %{
              consumer_count: 1,
              max_workers: 10,
              message_count: 740,
              paused: false
            },
            other: %{
              consumer_count: 1,
              max_workers: 2,
              message_count: 0,
              paused: false
            }
          }
        }
      }
    ]

    output = [
      %{
        "count" => 740,
        "partition_name" => "roger_test_partition_2",
        "paused" => "running",
        "qualified_queue_name" => "roger_test_partition_2-default",
        "queue_name" => :default
      },
      %{
        "count" => 740,
        "partition_name" => "roger_test_partition_2",
        "paused" => "running",
        "qualified_queue_name" => "roger_test_partition_2-fast",
        "queue_name" => :fast
      },
      %{
        "count" => 0,
        "partition_name" => "roger_test_partition_2",
        "paused" => "running",
        "qualified_queue_name" => "roger_test_partition_2-other",
        "queue_name" => :other
      },
      %{
        "count" => 740,
        "partition_name" => "roger_test_partition_1",
        "paused" => "running",
        "qualified_queue_name" => "roger_test_partition_1-default",
        "queue_name" => :default
      },
      %{
        "count" => 740,
        "partition_name" => "roger_test_partition_1",
        "paused" => "running",
        "qualified_queue_name" => "roger_test_partition_1-fast",
        "queue_name" => :fast
      },
      %{
        "count" => 0,
        "partition_name" => "roger_test_partition_1",
        "paused" => "running",
        "qualified_queue_name" => "roger_test_partition_1-other",
        "queue_name" => :other
      },
      %{
        "count" => 740,
        "partition_name" => "roger_test_partition_4",
        "paused" => "running",
        "qualified_queue_name" => "roger_test_partition_4-default",
        "queue_name" => :default
      },
      %{
        "count" => 740,
        "partition_name" => "roger_test_partition_4",
        "paused" => "running",
        "qualified_queue_name" => "roger_test_partition_4-fast",
        "queue_name" => :fast
      },
      %{
        "count" => 0,
        "partition_name" => "roger_test_partition_4",
        "paused" => "running",
        "qualified_queue_name" => "roger_test_partition_4-other",
        "queue_name" => :other
      },
      %{
        "count" => 740,
        "partition_name" => "roger_test_partition_3",
        "paused" => "running",
        "qualified_queue_name" => "roger_test_partition_3-default",
        "queue_name" => :default
      },
      %{
        "count" => 740,
        "partition_name" => "roger_test_partition_3",
        "paused" => "running",
        "qualified_queue_name" => "roger_test_partition_3-fast",
        "queue_name" => :fast
      },
      %{
        "count" => 0,
        "partition_name" => "roger_test_partition_3",
        "paused" => "running",
        "qualified_queue_name" => "roger_test_partition_3-other",
        "queue_name" => :other
      }
    ]
    assert MapSet.new(RogerApi.Queues.partitions(input)) == MapSet.new(output)

  end

end