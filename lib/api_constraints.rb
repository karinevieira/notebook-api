class ApiConstraints
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def version_header
    "application/vnd.api.v#{@version}+json"
  end

  def matches?(req)
    @default || req.headers['Accept']&.include?(version_header)
  end
end