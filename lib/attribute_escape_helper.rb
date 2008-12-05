module AttributeEscapeHelper
  ATTRIBUTE_ESCAPE = { '&' => 'and', '>' => '&gt;', '<' => '&lt;', '"' => "'" }
  def attribute_escape(s)
    s.to_s.gsub(/[&"><]/) { |special| ATTRIBUTE_ESCAPE[special] }
  end
  alias_method :a, :attribute_escape
end
  