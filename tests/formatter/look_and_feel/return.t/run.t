  $ scilla-fmt return.scilla
  scilla_version 0

  library Return


  contract Return ()
  
  
  procedure no_return ()
    a = _creation_block;
    return a
  end

  procedure incorrect_return_type () -> String
    a = _creation_block;
    return a
  end

  procedure return_1 () -> BNum
    a = _creation_block;
    return a
  end
