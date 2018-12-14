<a href="{{ route('question/edit',$question->id)}}" class="btn btn-primary">Edit</a>
                        <form action="{{ route('question/delete',$question->id)}}" method="post" onsubmit="return confirm('Are you sure want to delete ?');" style="display: inline;">
                                        {{ csrf_field()}}     
                                 
                                 <input type="hidden" name="_method" value="delete"> 
                                 <button type="submit" class="btn btn-danger">Delete</button>
                             </form>