def single_quote
  # single quote string here
    'Hello World and others!'
end

def double_quote
  # Double quote string here
    "Hello World and others!"
end

def here_doc
  # Here doc string here
    document = <<-HERE         # We begin with <<- followed by the ending delimiter HERE
    Hello World and others!
    HERE
end
