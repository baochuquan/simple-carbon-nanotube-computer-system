library verilog;
use verilog.vl_types.all;
entity LATCH is
    generic(
        width           : integer := 1
    );
    port(
        clk             : in     vl_logic;
        \in\            : in     vl_logic_vector;
        \out\           : out    vl_logic_vector;
        rst             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width : constant is 1;
end LATCH;
