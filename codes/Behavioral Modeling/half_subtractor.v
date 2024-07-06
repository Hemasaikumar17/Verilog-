module half_subtractor (a,b,D,B);
  input a,b;
  output  reg D,B;

  always@(*)begin

    if (a == 1'b0 && b == 1'b0)begin
	D = 1'b0; B = 1'b0;
	end

	else if (a == 1'b0 && b == 1'b1)begin
	D = 1'b1; B = 1'b1;
	end

	else if(a == 1'b1 && b == 1'b0)begin
	D = 1'b1; B = 1'b0;
	end

	else if(a == 1'b1  && b == 1'b1)begin
	D = 1'b0; B = 1'b0;
    end

	else begin
	$display("INVALID");
    end

  end
endmodule

