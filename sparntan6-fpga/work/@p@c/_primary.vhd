library verilog;
use verilog.vl_types.all;
entity PC is
    port(
        clk             : in     vl_logic;
        br_taken        : in     vl_logic;
        X               : in     vl_logic_vector(7 downto 0);
        pc_plus_1       : in     vl_logic_vector(7 downto 0);
        pc              : out    vl_logic_vector(7 downto 0);
        rst             : in     vl_logic
    );
end PC;
