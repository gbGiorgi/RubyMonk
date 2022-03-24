def relay(array, data_type)
  if data_type == "s"
    return array.map{|i| i.send(:to_s) }
  else
    return array.map{|i| i.send(:to_i) }
  end
end