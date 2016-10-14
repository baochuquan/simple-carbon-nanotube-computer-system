library verilog;
use verilog.vl_types.all;
entity PC_PLUS_1 is
    port(
        clk             : in     vl_logic;
        pc              : in     vl_logic_vector(7 downto 0);
        pc_plus_1       : out    vl_logic_vector(7 downto 0);
        rst             : in     vl_logic
    );
end PC_PLUS_1;
