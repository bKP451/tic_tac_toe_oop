class String
  def red
    "\e[31m#{self}\e[0m" 
  end

  def green
    "\e[32m#{self}\e[0m" 
  end

  def brown
    "\e[33m#{self}\e[0m" 
  end

  def blue
    "\e[34m#{self}\e[0m" 
  end
  
  def gray
    "\e[37m#{self}\e[0m" 
  end

  def italic
    "\e[3m#{self}\e[23m" 
  end

  def underline
    "\e[4m#{self}\e[24m" 
  end
end