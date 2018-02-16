defmodule Roger.Job do

  defstruct id: nil, module: nil, args: nil, queue_key: nil, execution_key: nil, retry_count: 0, started_at: 0, queued_at: 0

end


