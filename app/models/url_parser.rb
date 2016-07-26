class UrlParser
  def self.domain(url)
    URI(url).host.match(/[^\.]+\.\w+$/).to_s
  end
end