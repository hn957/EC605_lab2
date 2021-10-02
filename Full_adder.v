module full_adder( input A,B,Cin, 
                    output S,Cout);

    wire x1, a1,a2;
    
    xor xor1(x1,A,B);
    and and1(a1,Cin,x1);
    and and2(a2,A,B);
    or or1(Cout,a1,a2);
    xor xor2(S,x1,Cin);
    
endmodule                 