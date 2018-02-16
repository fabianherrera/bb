defmodule Support.RogerApi do
  @moduledoc false

  def running_jobs do
      [
      "watcher@127.0.0.1": %{
        "roger_demo_partition" => [
          %Roger.Job{
            args: %{"country" => "Venezuela", "email" => "janedoe@gmail.com", "name" => "Jane Doe", "number_of_pets" => 966},
            execution_key: nil, id: "16ovjr39jvijf4kgrlqe2ib2aadojhid", module: RogerDemo.Job.CreateUpdateUser,
            queue_key: nil, queued_at: 1517697586453, retry_count: 0, started_at: 1517697682999
          },
          %Roger.Job{
            args: %{"country" => "Venezuela", "email" => "janedoe@gmail.com", "name" => "Jane Doe", "number_of_pets" => 965},
            execution_key: nil, id: "289gp2bklk91diuukgd73jtm4pes0hfe", module: RogerDemo.Job.CreateUpdateUser,
            queue_key: nil, queued_at: 1517697586453, retry_count: 0, started_at: 1517697682998
          }],
        "other_partition" => [
          %Roger.Job{
            args: %{"country" => "Venezuela", "email" => "janedoe@gmail.com", "name" => "Jane Doe", "number_of_pets" => 962},
            execution_key: nil, id: "38mkrss34n1uc4tdmulu4mqm4ic9a5t6", module: RogerDemo.Job.CreateUpdateUser,
            queue_key: nil, queued_at: 1517697586453, retry_count: 0, started_at: 1517697682981
          },
          %Roger.Job{
            args: %{"country" => "Venezuela", "email" => "janedoe@gmail.com", "name" => "Jane Doe", "number_of_pets" => 961},
            execution_key: nil, id: "5hm0u6cbeo8tdk6qkq0l8v6qgqnfhori", module: RogerDemo.Job.CreateUpdateUser,
            queue_key: nil, queued_at: 1517697586453, retry_count: 0, started_at: 1517697682981
          },
          %Roger.Job{
            args: %{"country" => "Venezuela", "email" => "janedoe@gmail.com", "name" => "Jane Doe", "number_of_pets" => 964},
            execution_key: nil, id: "83u3ourppqnctk67r6f0mh3cmoa34a3i", module: RogerDemo.Job.CreateUpdateUser,
            queue_key: nil, queued_at: 1517697586453, retry_count: 0, started_at: 1517697682983
          }
        ]},
      "server@127.0.0.1": %{
        "small_partition" => [
          %Roger.Job{
            args: %{"country" => "Venezuela", "email" => "janedoe@gmail.com", "name" => "Jane Doe", "number_of_pets" => 967},
            execution_key: nil, id: "c2mkvrgfonkgf1pdgkdl87okb3hi103r", module: RogerDemo.Job.CreateUpdateUser,
            queue_key: nil, queued_at: 1517697586454, retry_count: 0, started_at: 1517697683000
          },
          %Roger.Job{
            args: %{"country" => "Venezuela", "email" => "janedoe@gmail.com", "name" => "Jane Doe", "number_of_pets" => 970},
            execution_key: nil, id: "fah075k2eeps6dnq3qpage99og2cpoiv", module: RogerDemo.Job.CreateUpdateUser,
            queue_key: nil, queued_at: 1517697586454, retry_count: 0, started_at: 1517697683001
          },
          %Roger.Job{
            args: %{"country" => "Venezuela", "email" => "janedoe@gmail.com", "name" => "Jane Doe", "number_of_pets" => 969},
            execution_key: nil, id: "n2c0v3pouv0944l7k5bbgnfuksq61bu7", module: RogerDemo.Job.CreateUpdateUser,
            queue_key: nil, queued_at: 1517697586454, retry_count: 0, started_at: 1517697683001
          },
          %Roger.Job{
            args: %{"country" => "Venezuela", "email" => "janedoe@gmail.com", "name" => "Jane Doe", "number_of_pets" => 963},
            execution_key: nil, id: "nutgqfhbcqkpju5e7975oh1o10mt6n3t", module: RogerDemo.Job.CreateUpdateUser,
            queue_key: nil, queued_at: 1517697586453, retry_count: 0, started_at: 1517697682983
          },
          %Roger.Job{
            args: %{"country" => "Venezuela", "email" => "janedoe@gmail.com", "name" => "Jane Doe", "number_of_pets" => 968},
            execution_key: nil, id: "qcdvp0qbdhc5d6jabpuk6v0jjg3jkr3t", module: RogerDemo.Job.CreateUpdateUser,
            queue_key: nil, queued_at: 1517697586454, retry_count: 0, started_at: 1517697683000
          }
        ]
      },
      nonode@nohost: []
    ]
  end

def nodes_to_jobs do
  [
    %Roger.Job{
      args: %{
        "country" => "Venezuela",
        "email" => "janedoe@gmail.com",
        "name" => "Jane Doe",
        "number_of_pets" => 967
      },
      execution_key: nil,
      id: "c2mkvrgfonkgf1pdgkdl87okb3hi103r",
      module: RogerDemo.Job.CreateUpdateUser,
      queue_key: nil,
      queued_at: 1517697586454,
      retry_count: 0,
      started_at: 1517697683000
    },
    %Roger.Job{
      args: %{
        "country" => "Venezuela",
        "email" => "janedoe@gmail.com",
        "name" => "Jane Doe",
        "number_of_pets" => 970
      },
      execution_key: nil,
      id: "fah075k2eeps6dnq3qpage99og2cpoiv",
      module: RogerDemo.Job.CreateUpdateUser,
      queue_key: nil,
      queued_at: 1517697586454,
      retry_count: 0,
      started_at: 1517697683001
    },
    %Roger.Job{
      args: %{
        "country" => "Venezuela",
        "email" => "janedoe@gmail.com",
        "name" => "Jane Doe",
        "number_of_pets" => 969
      },
      execution_key: nil,
      id: "n2c0v3pouv0944l7k5bbgnfuksq61bu7",
      module: RogerDemo.Job.CreateUpdateUser,
      queue_key: nil,
      queued_at: 1517697586454,
      retry_count: 0,
      started_at: 1517697683001
    },
    %Roger.Job{
      args: %{
        "country" => "Venezuela",
        "email" => "janedoe@gmail.com",
        "name" => "Jane Doe",
        "number_of_pets" => 963
      },
      execution_key: nil,
      id: "nutgqfhbcqkpju5e7975oh1o10mt6n3t",
      module: RogerDemo.Job.CreateUpdateUser,
      queue_key: nil,
      queued_at: 1517697586453,
      retry_count: 0,
      started_at: 1517697682983
    },
    %Roger.Job{
      args: %{
        "country" => "Venezuela",
        "email" => "janedoe@gmail.com",
        "name" => "Jane Doe",
        "number_of_pets" => 968
      },
      execution_key: nil,
      id: "qcdvp0qbdhc5d6jabpuk6v0jjg3jkr3t",
      module: RogerDemo.Job.CreateUpdateUser,
      queue_key: nil,
      queued_at: 1517697586454,
      retry_count: 0,
      started_at: 1517697683000
    },
    %Roger.Job{
      args: %{
        "country" => "Venezuela",
        "email" => "janedoe@gmail.com",
        "name" => "Jane Doe",
        "number_of_pets" => 962
      },
      execution_key: nil,
      id: "38mkrss34n1uc4tdmulu4mqm4ic9a5t6",
      module: RogerDemo.Job.CreateUpdateUser,
      queue_key: nil,
      queued_at: 1517697586453,
      retry_count: 0,
      started_at: 1517697682981
    },
    %Roger.Job{
      args: %{
        "country" => "Venezuela",
        "email" => "janedoe@gmail.com",
        "name" => "Jane Doe",
        "number_of_pets" => 961
      },
      execution_key: nil,
      id: "5hm0u6cbeo8tdk6qkq0l8v6qgqnfhori",
      module: RogerDemo.Job.CreateUpdateUser,
      queue_key: nil,
      queued_at: 1517697586453,
      retry_count: 0,
      started_at: 1517697682981
    },
    %Roger.Job{
      args: %{
        "country" => "Venezuela",
        "email" => "janedoe@gmail.com",
        "name" => "Jane Doe",
        "number_of_pets" => 964
      },
      execution_key: nil,
      id: "83u3ourppqnctk67r6f0mh3cmoa34a3i",
      module: RogerDemo.Job.CreateUpdateUser,
      queue_key: nil,
      queued_at: 1517697586453,
      retry_count: 0,
      started_at: 1517697682983
    },
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
    },
    %Roger.Job{
      args: %{
        "country" => "Venezuela",
        "email" => "janedoe@gmail.com",
        "name" => "Jane Doe",
        "number_of_pets" => 965
      },
      execution_key: nil,
      id: "289gp2bklk91diuukgd73jtm4pes0hfe",
      module: RogerDemo.Job.CreateUpdateUser,
      queue_key: nil,
      queued_at: 1517697586453,
      retry_count: 0,
      started_at: 1517697682998
    }
  ]
end

def partitions do
  [
    "server@127.0.0.1": %{
      running: %{
        "roger_test_partition_1" => %{
          default: %{consumer_count: 1, max_workers: 10, message_count: 740, paused: false},
          fast: %{consumer_count: 1, max_workers: 10, message_count: 740, paused: false},
          other: %{consumer_count: 1, max_workers: 2, message_count: 0, paused: false}
        }
      },
      waiting: %{
        "roger_test_partition_2" => %{
          default: %{consumer_count: 1, max_workers: 10, message_count: 740, paused: false},
          fast: %{consumer_count: 1, max_workers: 10, message_count: 740, paused: false},
          other: %{consumer_count: 1, max_workers: 2, message_count: 0, paused: false}
        }
      }
    },
    "watcher@127.0.0.1": %{
      running: %{
        "roger_test_partition_3" => %{
          default: %{consumer_count: 1, max_workers: 10, message_count: 740, paused: false},
          fast: %{consumer_count: 1, max_workers: 10, message_count: 740, paused: false},
          other: %{consumer_count: 1, max_workers: 2, message_count: 0, paused: false}
        }
      },
      waiting: %{
        "roger_test_partition_4" => %{
          default: %{consumer_count: 1, max_workers: 10, message_count: 740, paused: false},
          fast: %{consumer_count: 1, max_workers: 10, message_count: 740, paused: false},
          other: %{consumer_count: 1, max_workers: 2, message_count: 0, paused: false}
        }
      }
    }
  ]
end

def partitions_to_queues do
  [
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

end




end