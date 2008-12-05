module AttributeEscapeHelper
  def attribute_escape(s)
    s.gsub('"', "'")
  end
  alias_method :a, :attribute_escape
end
  