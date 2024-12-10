# Linux Shell Scripting (Generating a Multiplication Table)
This project is about using bash script to generate a multiplication table from a user input.
# Flow chart and pseudo code development
- A flow chart on steps taken for the multiplication table generation was draw out.
- Pseudo code was used as a sketch for the main code
# Writing the code.
- Creating a .sh file using `vim` syntax
![create.sh](./1.create.sh_file.png)
## Creating function to display the table.
![diplay_func](./2.function_to_display_table_with_positional_argument.png)
- Writing the for list loop for the ascending order using `for` and `seq` syntax
![for_loop](./3.for_list_loop_for%20ascending%20order.png)
- Writing the for list loop for the descending order using `seq` syntax
![foor_loop2](./4.for_list_loop_for_descending_order.png)
- Ending the function
![full_fuction](./5.full_display_function.png)

## Prompting User input.
- Asking user to provide number with `echo` syntax
![echo_number](./6.user_number_input_prompt.png)
## Handling invalid number.
- Handling the invalid number from user `if` and `then` synatx, and by echoing, invalid number enter number 1 to 10.
![validate](./7.validating%20the%20number%20input.png)
## User input for table choice
This ask user either to display a full table or partial with a range.
- Echoing user inout with `echo` syntax.
![table_choice](./8.table_type_choice.png)
- Setting the condition for the table type choice usinf `case` syntax.
![table_case](./9.cases_for_table_type_choice.png)
- Handling invalid table choice.
![invalid_choice](./10.handling_invalid_table_choice.png)
## Using c-style for loop
- creating a for loop using c-style and retaining other variable name.
![c_style_for_loop](./11.adding_c_style_loop.png)
## Executing the multiplication table .sh file
- save the .sh file and chage the mode to executable mode using `:wq` and `chmod +x` syntax.
![chmod_x](./12.chmod_+x.png)
- Execute the .sh file with `./` syntax
- bash output with user input request
![run](./13.program_run_iput.png)
## Testing
- output with table choice request
![output_for_table_choice](./14.program_run_table_option.png)
- output showing user choice for table ascending and descending
![order_choice](./15.order_prompt.png)
- output table in readable format
![final_output](./16.output_list_form.png)
- Invalid output
![invalid_testing](./17.handling_invalid_result.png)
