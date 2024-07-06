module full_subtractor(A,B,Bin,D,Bo);
  input  A,B,Bin;
  output reg D,Bo;

  always@(*)begin

	if (A == 1'b0 && B == 1'b0 && Bin == 1'b0)begin
	D = 1'b0; Bo = 1'b0;
	end

	else if (A == 1'b0 && B == 1'b0 && Bin == 1'b1)begin
	D = 1'b1; Bo = 1'b1;
	end

	else if (A == 1'b0 && B == 1'b1 && Bin == 1'b0)begin
	D = 1'b1; Bo = 1'b1;
	end

	else if (A == 1'b0 && B == 1'b1 && Bin == 1'b1)begin
	D = 1'b0; Bo = 1'b1;
	end

	else if (A == 1'b1 && B == 1'b0 && Bin == 1'b0)begin
	D = 1'b1; Bo = 1'b0;
	end

	else if (A == 1'b1 && B == 1'b0 && Bin == 1'b1)begin
	D = 1'b0; Bo = 1'b0;
	end

	else if (A == 1'b1 && B == 1'b1 && Bin == 1'b0)begin
	D = 1'b0; Bo = 1'b0;
    end

	else if (A == 1'b1 && B == 1'b1 && Bin == 1'b1)begin
	D = 1'b1; Bo = 1'b1;
	end

	else begin
	$display("INVALID");
	end

  end
endmodule  
