// Code your design here
module demux_1_to_4(

    input d,
    input s0,
    input s1,
    output y0,
    output y1,
    output y2,
    output y3
    );
not(s1n,s1),(s0n,s0);
and(y0,d,s0n,s1n),(y1,d,s0,s1n),(y2,d,s0n,s1),(y3,d,s0,s1);
endmodule
