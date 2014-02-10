xml.instruct!
xml.urlset("xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9", "xmlns:xhtml" => "http://www.w3.org/1999/xhtml") do

  @pages.each do |page|
    # external links doesn't belong into our sitemap!
    if !(page.slug.to_s.match(/^http:\/\/.+/))
      xml.url do
        xml.loc "http://#{request.host_with_port}/#{page.slug}"
        page.slug == nil ? xml.priority(1.0) : xml.priority(0.5)
      end
    end
  end
end
