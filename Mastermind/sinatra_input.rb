class SinatraInput
  def get_guess_input
    # <form action='/guess_code' method='post'>Color choices: 
    #         <input name='guess' type='text' />
    #         <input type='submit' value='go' />
    #      </form>
     "<form action='/guess_code' method='post'>
     <select name='guess1'>
     <option value='red'>red</option>
     <option value='orange'>orange</option>
     <option value='yellow'>yellow</option>
     <option value='green'>green</option>
     <option value='blue'>blue</option>
     </select>
     <select name='guess2'>
      <option value='red'>red</option>
      <option value='orange'>orange</option>
      <option value='yellow'>yellow</option>
      <option value='green'>green</option>
      <option value='blue'>blue</option>
      </select>
      <select name='guess3'>
       <option value='red'>red</option>
       <option value='orange'>orange</option>
       <option value='yellow'>yellow</option>
       <option value='green'>green</option>
       <option value='blue'>blue</option>
       </select>
       <select name='guess4'>
        <option value='red'>red</option>
        <option value='orange'>orange</option>
        <option value='yellow'>yellow</option>
        <option value='green'>green</option>
        <option value='blue'>blue</option>
        </select>
        <input type='submit' value='go' />
     </form>"
  end
  def the_end
    "<form action='/the_end' method='post'>
    <input name='end' type='submit' value='end game' name='true' />
    </form>"
  end
end