
action write file
  input path, pattern path file
  input encoding, pattern encoding
  call path, encoding

action read file
  input path, pattern path file
  input content, pattern string
  input encoding, pattern encoding
  call path, content, encoding

action read url
  input path, pattern path url
  input content, pattern string
  input encoding, pattern encoding

action read location, from memory
  input location, pattern integer
  input memory, pattern array

action load module
  input path, pattern path file
  input reference, pattern module

problem not in memory, module
  solution load module

problem not in memory, url
  solution load url
