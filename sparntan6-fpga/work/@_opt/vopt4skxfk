library verilog;
use verilog.vl_types.all;
entity DRAM_Controller is
    port(
        gclk            : in     vl_logic;
        W               : in     vl_logic;
        D_addr_W        : in     vl_logic_vector(7 downto 0);
        DRAM_W          : in     vl_logic_vector(7 downto 0);
        R               : in     vl_logic;
        D_addr_R        : in     vl_logic_vector(7 downto 0);
        DRAM_R          : out    vl_logic_vector(7 downto 0);
        wea             : out    vl_logic;
        daddr           : out    vl_logic_vector(7 downto 0);
        ddataout        : out    vl_logic_vector(7 downto 0);
        ddatain         : in     vl_logic_vector(7 downto 0)
    );
end DRAM_Controller;
