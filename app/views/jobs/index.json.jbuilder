json.array!(@jobs) do |job|
  json.extract! job, :id, :dwnld
  json.url job_url(job, format: :json)
end
