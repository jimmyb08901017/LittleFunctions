module SME(clk,reset,chardata,isstring,ispattern,valid,match,match_index);
input clk;
input reset;
input [7:0] chardata;
input isstring;
input ispattern;
output match;
output [4:0] match_index;
output valid;
// ---------------------------------------------------------------------------
// Local Parameters
// ---------------------------------------------------------------------------
localparam INIT = 3'd0;
localparam READS = 3'd1;
localparam READP = 3'd2;
localparam MATCH = 3'd3;
localparam ENDMATCH = 3'd4;

localparam space = 8'h20;
localparam first = 8'h5E;
localparam last = 8'h24;
localparam dot = 8'h2E;
localparam star = 8'h2A;
// ---------------------------------------------------------------------------
// Wires and Registers
// ---------------------------------------------------------------------------
reg [2:0]   state_r, state_w;           // finite state machine
reg [6:0]   strCnt_r, strCnt_w;         // length of string
reg [3:0]   patCnt_r, patCnt_w;         // length of pattern
reg [6:0]   matchCnt_r, matchCnt_w;     // stringcnt
reg [3:0]   matchCnt2_r, matchCnt2_w;   // patterncnt
reg [6:0]   starCnt_r, starCnt_w;

reg         continueFlag_w, continueFlag_r;  // 

reg         valid_r, valid_w;              
reg [7:0]   string_r [31:0];
reg [7:0]   string_w [31:0];
reg [7:0]   pattern_r[ 7:0]; 
reg [7:0]   pattern_w[ 7:0];
reg [7:0]   patMatch_w, patMatch_r;
reg [7:0]   strMatch_w, strMatch_r;

reg         match_w, match_r;
reg [4:0]   matchIdx_w, matchIdx_r;

reg [3:0]   tmp_w, tmp_r; 

reg         first_flag_w, first_flag_r;
reg         skipFlag_w, skipFlag_r;


// ---------------------------------------------------------------------------
// Continuous Assignment
// ---------------------------------------------------------------------------
assign valid = valid_r;
assign match_index = matchIdx_r;
assign match = match_r;

// ---------------------------------------------------------------------------
// Combinational Blocks
// ---------------------------------------------------------------------------

// FSM
always@(*) begin
    //$display("state_w = %d", state_w);
    state_w = state_r;
    case(state_r)
        INIT: begin
            if(isstring == 1'b1) begin
                state_w = READS;
            end
        end 
        READS: begin
            if(isstring == 1'b0) begin
                state_w = READP;
                // $display("string_r[0] = %d", string_r[0]);
            end
            else begin
                state_w = state_r;
            end
        end
        READP: begin
            if(ispattern == 1'b0) begin
                state_w = MATCH;
                // $display("p_r[0] = %d", pattern_r[0]);
            end
        end
        MATCH: begin
            // $display("length s = %d, p = %d", strCnt_r, patCnt_r);
            if(valid_w) begin
                state_w = ENDMATCH;
            end
        end
        ENDMATCH: begin
            if(isstring == 1'b1) begin
                state_w = READS;
            end
            else if(ispattern == 1'b1) begin
                state_w = READP;
            end
        end
        default: state_w = state_r;
    endcase
end

// counters
always @(*) begin
    patCnt_w = patCnt_r;
    strCnt_w = strCnt_r;
    if (state_r == READS) begin
        strCnt_w = strCnt_r + 1;
    end
    else if(state_r == READP) begin
        patCnt_w = patCnt_r + 1;
    end
    else if (state_r == ENDMATCH) begin
        patCnt_w = 0;
        if(isstring) begin
            strCnt_w = 0;
        end
        else begin
            strCnt_w = strCnt_r;
        end
    end
end

integer  i;
// READS : string
always @(*) begin
    for ( i=0 ; i<32 ; i=i+1 ) begin
        string_w[i] = string_r[i];
    end
    if(isstring) begin
        string_w[strCnt_w] = chardata;
    end
end

// READP : pattern
always @(*) begin
    for ( i=0 ; i<8 ; i=i+1 ) begin
        pattern_w[i] = pattern_r[i];
    end
    if(ispattern) begin
        pattern_w[patCnt_w] = chardata;
    end
end

// MATCH
always @(*) begin
    case(matchCnt_w + matchCnt2_w + starCnt_w - continueFlag_w - skipFlag_w)
        6'd0:   strMatch_w = string_r[0]; 
        6'd1:   strMatch_w = string_r[1];
        6'd2:   strMatch_w = string_r[2]; 
        6'd3:   strMatch_w = string_r[3];
        6'd4:   strMatch_w = string_r[4]; 
        6'd5:   strMatch_w = string_r[5];
        6'd6:   strMatch_w = string_r[6]; 
        6'd7:   strMatch_w = string_r[7];
        6'd8:   strMatch_w = string_r[8]; 
        6'd9:   strMatch_w = string_r[9];
        6'd10:   strMatch_w = string_r[10]; 
        6'd11:   strMatch_w = string_r[11];
        6'd12:   strMatch_w = string_r[12]; 
        6'd13:   strMatch_w = string_r[13];
        6'd14:   strMatch_w = string_r[14]; 
        6'd15:   strMatch_w = string_r[15];
        6'd16:   strMatch_w = string_r[16]; 
        6'd17:   strMatch_w = string_r[17];
        6'd18:   strMatch_w = string_r[18]; 
        6'd19:   strMatch_w = string_r[19];
        6'd20:   strMatch_w = string_r[20]; 
        6'd21:   strMatch_w = string_r[21];
        6'd22:   strMatch_w = string_r[22]; 
        6'd23:   strMatch_w = string_r[23];
        6'd24:   strMatch_w = string_r[24]; 
        6'd25:   strMatch_w = string_r[25];
        6'd26:   strMatch_w = string_r[26]; 
        6'd27:   strMatch_w = string_r[27];
        6'd28:   strMatch_w = string_r[28]; 
        6'd29:   strMatch_w = string_r[29];
        6'd30:   strMatch_w = string_r[30]; 
        6'd31:   strMatch_w = string_r[31];
        default: strMatch_w = strMatch_r;
    endcase
end

always @(*) begin
    case(matchCnt2_w)
    3'd0: patMatch_w = pattern_r[0];
    3'd1: patMatch_w = pattern_r[1];
    3'd2: patMatch_w = pattern_r[2];
    3'd3: patMatch_w = pattern_r[3];
    3'd4: patMatch_w = pattern_r[4];
    3'd5: patMatch_w = pattern_r[5]; 
    3'd6: patMatch_w = pattern_r[6];
    3'd7: patMatch_w = pattern_r[7];
    default: patMatch_w = patMatch_r;
    endcase
end


//  1. "^"
//     - Check if space or the beginning of the string
//     - 
//  2. "$"
//     - Check if space or the end of string
//     - 
//  3. "*"
//     - If in the beginning, check if next to last exist.
//     - If in the middle, check if next to last exist.
//     - If at last, skip. (O)
//  4. "."
//     - Just skip.
always @(*) begin
    match_w = 0;
    valid_w = 0;
    matchIdx_w = 0;
    matchCnt_w = matchCnt_r;
    matchCnt2_w = matchCnt2_r;
    continueFlag_w = continueFlag_r;
    starCnt_w = starCnt_r;
    tmp_w = tmp_r;
    first_flag_w = first_flag_r;
    skipFlag_w = skipFlag_r;
    if (state_r == MATCH) begin
        // $display("match: %d %d %d %d / %s %s", matchCnt_r, matchCnt2_r, starCnt_r, tmp_r,strMatch_r, patMatch_r);
        if(matchCnt_r + patCnt_r - 2 <= strCnt_r) begin // no matchCnt2
            if(matchCnt2_r >= patCnt_r - 1) begin // O
                // $display("YES");
                match_w = 1'b1;
                valid_w = 1'b1;
                matchIdx_w = first_flag_r ? (matchCnt_r + 1): matchCnt_r;
                matchCnt_w = 0;
                matchCnt2_w = 0;
                starCnt_w = 0;
                continueFlag_w = 0;
                first_flag_w = 0;
                tmp_w = 0;
                skipFlag_w = 0;
            end
            else if(patMatch_r == first) begin
                if (strMatch_r == space) begin
                    first_flag_w = 1;
                    matchCnt2_w = matchCnt2_r + 1;
                    skipFlag_w = 0;
                end
                else if (matchCnt_r == 0) begin
                    skipFlag_w = 1;
                    matchCnt2_w = matchCnt2_r + 1;
                end
                else if (strMatch_r == patMatch_r ) begin
                    matchCnt2_w = matchCnt2_r + 1;
                end
                else begin
                    matchCnt2_w = 0;
                    matchCnt_w = matchCnt_r + 1;
                    skipFlag_w = 0;
                end
            end
            else if(patMatch_r == last) begin
                if (strMatch_r == space || (matchCnt_r + matchCnt2_r + starCnt_r >= strCnt_r - 1 )) begin
                    matchCnt2_w = matchCnt2_r + 1;
                end
                else if (strMatch_r == patMatch_r ) begin
                    matchCnt2_w = matchCnt2_r + 1;
                end
                else begin
                    matchCnt2_w = (continueFlag_r) ? tmp_r :0;
                    matchCnt_w = (continueFlag_r) ? matchCnt_r : matchCnt_r + 1;
                    starCnt_w = (continueFlag_r)? (starCnt_r + 1): starCnt_r;
                    skipFlag_w = 0;
                end
            end
            else if(patMatch_r == star) begin
                continueFlag_w = 1'b1;
                tmp_w = matchCnt2_r + 1;
                matchCnt2_w = matchCnt2_r + 1;
                matchCnt_w = matchCnt_r;
            end
            else if(patMatch_r == dot) begin
                matchCnt2_w = matchCnt2_r + 1;
                matchCnt_w = matchCnt_r;
            end
            else begin
                if (continueFlag_r == 1'b1) begin
                    if (strMatch_r == patMatch_r) begin
                        matchCnt2_w = matchCnt2_r + 1;
                        matchCnt_w = matchCnt_r;
                    end
                    else if ( starCnt_r + tmp_r + matchCnt_r - 1 >= strCnt_r) begin // X
                        if(matchCnt2_r >= patCnt_r - 1) begin // O
                            //$display("YES2");
                            match_w = 1'b1;
                            valid_w = 1'b1;
                            matchIdx_w = matchCnt_r;
                            matchCnt_w = 0;
                            matchCnt2_w = 0;
                            starCnt_w = 0;
                            continueFlag_w = 0;
                            starCnt_w = 0;
                            first_flag_w = 0;
                            tmp_w = 0;
                            skipFlag_w = 0;
                        end
                        else begin
                            //$display("NO1");
                            match_w = 1'b0;
                            valid_w = 1'b1;
                            matchIdx_w = 0;
                            matchCnt_w = 0;
                            matchCnt2_w = 0;
                            starCnt_w = 0;
                            continueFlag_w = 0;
                            starCnt_w = 0;
                            first_flag_w = 0; 
                            tmp_w = 0;
                            skipFlag_w = 0;
                        end
                    end
                    else begin
                        matchCnt2_w = tmp_r;
                        starCnt_w = starCnt_r + 1;
                    end
                end
                else begin
                    if (strMatch_r == patMatch_r) begin // O
                        matchCnt2_w = matchCnt2_r + 1;
                        matchCnt_w = matchCnt_r;
                    end
                    else begin
                        matchCnt2_w = 0;
                        matchCnt_w = matchCnt_r + 1; // next
                        skipFlag_w = 0;
                    end 
                end
            end
        end
        else begin // NO MATCH
            // $display("NO2");
            match_w = 1'b0;
            valid_w = 1'b1;
            matchIdx_w = 0;
            matchCnt_w = 0;
            matchCnt2_w = 0;
            starCnt_w = 0;
            continueFlag_w = 0;
            first_flag_w = 0;
            tmp_w = 0;
            skipFlag_w = 0;
        end
    end
end

// ---------------------------------------------------------------------------
// Sequential Block
// ---------------------------------------------------------------------------
always @(posedge clk) begin
    if (reset) begin
        state_r <= 0;
        valid_r <= 0;
        strCnt_r <= 0;
        patCnt_r <= 0;
        strMatch_r <= 0;
        patMatch_r <= 0;
        for (i = 0; i<32; i=i+1) begin
            string_r[i] <= 8'b0;
        end
        for (i = 0; i<8; i=i+1) begin
            pattern_r[i] <= 8'b0;
        end
        matchIdx_r <= 0;
        matchCnt_r <= 0;
        matchCnt2_r <= 0;
        starCnt_r <= 0;
        continueFlag_r <= 0;
        tmp_r <= 0;
        match_r <= 0;
        first_flag_r <= 0;
        skipFlag_r <= 0;
    end 
    else begin
        state_r <= state_w;
        valid_r <= valid_w;
        strCnt_r <= strCnt_w;
        patCnt_r <= patCnt_w;
        strMatch_r <= strMatch_w;
        patMatch_r <= patMatch_w;
        for (i = 0; i<32; i=i+1) begin
            string_r[i] <= string_w[i];
        end
        for (i = 0; i<8; i=i+1) begin
            pattern_r[i] <= pattern_w[i];
        end
        matchIdx_r <= matchIdx_w;
        matchCnt_r <= matchCnt_w;
        matchCnt2_r <= matchCnt2_w;
        starCnt_r <= starCnt_w;
        continueFlag_r <= continueFlag_w;
        tmp_r <= tmp_w;
        match_r <= match_w;
        first_flag_r <= first_flag_w;
        skipFlag_r <= skipFlag_w;
    end
    
end

endmodule
