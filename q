
[1mFrom:[0m /home/tekihei/.rbenv/versions/2.7.1/lib/ruby/gems/2.7.0/gems/actionpack-5.2.4.4/lib/action_dispatch/middleware/debug_exceptions.rb:70 ActionDispatch::DebugExceptions#call:

    [1;34m59[0m: [32mdef[0m [1;34mcall[0m(env)
    [1;34m60[0m:   request = [1;34;4mActionDispatch[0m::[1;34;4mRequest[0m.new env
    [1;34m61[0m:   _, headers, body = response = @app.call(env)
    [1;34m62[0m: 
    [1;34m63[0m:   [32mif[0m headers[[31m[1;31m"[0m[31mX-Cascade[1;31m"[0m[31m[0m] == [31m[1;31m"[0m[31mpass[1;31m"[0m[31m[0m
    [1;34m64[0m:     body.close [32mif[0m body.respond_to?([33m:close[0m)
    [1;34m65[0m:     raise [1;34;4mActionController[0m::[1;34;4mRoutingError[0m, [31m[1;31m"[0m[31mNo route matches [#{env[[1;31m'[0m[31mREQUEST_METHOD[1;31m'[0m[31m[0m[31m]}[0m[31m] #{env[[1;31m'[0m[31mPATH_INFO[1;31m'[0m[31m[0m[31m].inspect}[0m[31m[1;31m"[0m[31m[0m
    [1;34m66[0m:   [32mend[0m
    [1;34m67[0m: 
    [1;34m68[0m:   response
    [1;34m69[0m: [32mrescue[0m [1;34;4mException[0m => exception
 => [1;34m70[0m:   raise exception [32munless[0m request.show_exceptions?
    [1;34m71[0m:   render_exception(request, exception)
    [1;34m72[0m: [32mend[0m

