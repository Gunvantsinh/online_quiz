<a href="{{ route('candidate/result',$candidate->id)}}" class="btn btn-primary">View Result</a>
                        <form action="{{ route('delete',$candidate->id )}}" method="post" onsubmit="return confirm('Are you sure want to delete ?');" style="display: inline;">
                                        {{ csrf_field()}}     
                                 
                                 <input type="hidden" name="_method" value="delete"> 
                                 <button type="submit" class="btn btn-danger">Delete</button></form>