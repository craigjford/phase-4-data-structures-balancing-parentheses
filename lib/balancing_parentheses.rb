require_relative './stack'

def balancing_parentheses(input)

    input_string_array = input.split(//)

    st = Stack.new

    @stack = input_string_array

    beg_unbalance = @stack.index("(")
    if beg_unbalance == nil
        beg_unbalance = 0
    end    

    end_unbalance = 0

    arr_end = @stack.length - 1
    check_end = true

    while check_end  
        if @stack[arr_end] == "("
            end_unbalance += 1
            @stack.pop
            arr_end -= 1
        else
            check_end = false
        end 
    end 

    left_paran_ctr = 0
    right_paran_ctr = 0
    unbalanced_num = 0

    for i in beg_unbalance..arr_end do
        if @stack[i] == "("
            left_paran_ctr = left_paran_ctr + 1
        else    
            right_paran_ctr = right_paran_ctr + 1
        end
    end

    mid_unbalance = 0

    if left_paran_ctr > right_paran_ctr
        mid_unbalance = left_paran_ctr - right_paran_ctr
    elsif left_paran_ctr < right_paran_ctr
        mid_unbalance = right_paran_ctr - left_paran_ctr
    else
        mid_unbalance = 0    
    end

    tot_unbalance = beg_unbalance + mid_unbalance + end_unbalance

end
