library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        DI              : in     vl_logic_vector(7 downto 0);
        acc             : in     vl_logic_vector(7 downto 0);
        pc              : in     vl_logic_vector(7 downto 0);
        C               : in     vl_logic_vector(7 downto 0);
        CI              : in     vl_logic;
        X               : out    vl_logic_vector(7 downto 0);
        sel_A           : in     vl_logic_vector(1 downto 0);
        sel_B           : in     vl_logic_vector(2 downto 0)
    );
end ALU;
