; =========================================================================
; FILE: 32main.asm (32-Bit Version)
; DESCRIPTION: This is the basic template.  
;  It print outs "The answer is:" along with the contents of eax
;  Make sure that you put the final result in eax
;  Put your code inside the student work zone. 
;  Don't change anything else
; =========================================================================

; These two lines are REQUIRED setup. They must stay at the top of the file.
global main          ; Tells the computer where our program officially starts
extern printf        ; Tells the computer we want to use the standard print tool

section .data
    ; This is the text template used to display the answer on the screen.
    ; %d is a special placeholder where our final math number will drop in.
    ; 10 is the code for a New Line (pressing Enter).
    ; 0 is a Null-Terminator (it tells the computer the text is finished).
    format_string db "The answer is: %d", 10, 0

section .text
main:
    ; ---------------------------------------------------------------------
    ; START BOILERPLATE: Crucial memory setup for 32-bit.
    ; Tell students: "Do not touch or delete these two lines!"
    ; ---------------------------------------------------------------------
    push ebp         ; Save the background memory pointer (32-bit base pointer)
    mov ebp, esp     ; Align the memory stack so the computer doesn't crash
    ; ---------------------------------------------------------------------


    ; =====================================================================
    ; STUDENT WORK ZONE
    ; Students only edit the lines inside this box.
    ; remove the mov instruction shown and put it your code.
    ; =====================================================================
    mov eax, 42        ; 1. Move the number 42 into the register named EAX

    ; =====================================================================

    ; "Do not touch or delete anything below this line!"
    ; ---------------------------------------------------------------------
    ; END BOILERPLATE: The code below prints the answer and exiting safely.
    ; it uses printf which is a C function
   
    ; ---------------------------------------------------------------------
    ; In 32-bit, we pass arguments to printf by pushing them onto the stack
    ; backwards. First we push the number, then we push the text format.
    push eax                ; Push the number inside register EAX (the answer)
    push format_string      ; Push our text layout template
    call printf             ; Trigger the print command to show the text
    add esp, 8              ; Clean up the stack (we pushed two 4-byte items)
    
    mov eax, 0              ; Set the program's final status code to 0 (Success)
    mov esp, ebp            ; Restore original memory stack pointer
    pop ebp                 ; Restore original background memory pointer
    ret                     ; Successfully close the program and exit
