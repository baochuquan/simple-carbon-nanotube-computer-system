library verilog;
use verilog.vl_types.all;
entity IRAM_Controller is
    port(
        I_addr          : in     vl_logic_vector(7 downto 0);
        IRAM            : out    vl_logic_vector(15 downto 0);
        wea             : out    vl_logic;
        iaddr           : out    vl_logic_vector(7 downto 0);
        idatain         : in     vl_logic_vector(15 downto 0)
    );
end IRAM_Controller;
