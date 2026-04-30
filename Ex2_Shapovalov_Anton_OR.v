module logic_function (
    input wire x1,
    input wire x2,
    input wire x3,
    output wire y1, // МДНФ
    output wire y2  // МКНФ
);

    // ========= МДНФ =========
    wire a1 = ~(~x1 | ~x2 | x3);
    wire a2 = ~(~x1 | x2 | ~x3);
    wire a3 = ~(~x1 | ~x2 | ~x3);
    

    assign y1 = ~(~(a1 | a2 | a3));

    // ========= МКНФ =========
    wire b1 = ~(x1 | x2 | x3);
    wire b2 = ~(x1 | x2 | ~x3);
    wire b3 = ~(x1 | ~x2 | x3);
    wire b4 = ~(~x1 | x2 | x3);
    wire b5 = ~(x1 | ~x2 | ~x3);
    
    assign y2 = ~(b1 | b2 | b3 | b4 | b5);

endmodule
