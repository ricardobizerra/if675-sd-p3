module comb_logic(input wire startn, stopn, 
                  clearn, door_closed, timer_done,
                  output reg set, reset);

    always @(startn or stopn or clearn or
             door_closed or timer_done) 

        begin
            if ((!startn) && (stopn) && (clearn) && (door_closed) && (!timer_done))
                set = 1;
            else
                set = 0;
            
            if ((startn) || (!stopn) || (!clearn) || (!door_closed) || (timer_done))
                reset = 1;
            else
                reset = 0;
        end
endmodule